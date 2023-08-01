import 'package:flutter/material.dart';

import '../description.dart';

class BlogBoxWidget extends StatelessWidget {
  const BlogBoxWidget({
    super.key,
    required this.title,
    required this.imagepath,
  });

  final String title;
  final String imagepath;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (BuildContext context) {
          return Descriptionpage(
            title: title,
            imagepath: imagepath,
          );
        }));
      },
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              spreadRadius: 2,
              blurRadius: 2,
              offset: Offset(2, 2),
            )
          ],
        ),
        child: Column(
          children: [
            Image.asset(imagepath),
            ListTile(
              title: Text(title),
              trailing: Icon(Icons.arrow_forward_ios_rounded),
              leading: Icon(Icons.arrow_forward_ios_rounded),
            ),
          ],
        ),
      ),
    );
  }
}
