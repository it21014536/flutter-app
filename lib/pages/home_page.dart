import 'package:flutter/material.dart';
import 'package:my_first_app/pages/widget/blog_box_widget.dart';

import 'Login_page.dart';
import 'description.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  Color backgroundColor = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                if (backgroundColor == Colors.white) {
                  backgroundColor = Colors.black;
                } else {
                  backgroundColor = Colors.white;
                }
              });
            },
            icon: const Icon(
              Icons.color_lens,
            ),
          ),
        ],
      ),
      drawer: SafeArea(
        child: Drawer(
          child: Column(
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: ListTile(
                  title: Text('Flutter Mapp',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      )),
                ),
              ),
              ListTile(
                onTap: () {},
                leading: const Icon(Icons.settings),
                title: const Text('Settings',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                    )),
              ),
              ListTile(
                onTap: () {
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (BuildContext context) {
                    return const LoginPage();
                  }));
                },
                leading: const Icon(Icons.logout),
                title: const Text('Logout',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                    )),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
            child: Wrap(
              spacing: 10,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 106, 162, 247),
                    foregroundColor: Colors.white,
                    shape: StadiumBorder(),
                  ),
                  child: const Text('Money'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 106, 162, 247),
                    foregroundColor: Colors.white,
                    shape: StadiumBorder(),
                  ),
                  child: const Text('Bitcoin'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 106, 162, 247),
                    foregroundColor: Colors.white,
                    shape: StadiumBorder(),
                  ),
                  child: const Text('stock market'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 106, 162, 247),
                    foregroundColor: Colors.white,
                    shape: StadiumBorder(),
                  ),
                  child: const Text('house market'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 106, 162, 247),
                    foregroundColor: Colors.white,
                    shape: StadiumBorder(),
                  ),
                  child: const Text('other'),
                )
              ],
            ),
          ),
          const BlogBoxWidget(
            title: 'money',
            imagepath: 'images/bs.png',
          ),
          const BlogBoxWidget(
            title: 'Home',
            imagepath: 'images/bs1.png',
          ),
          const BlogBoxWidget(
            title: 'bitcoin',
            imagepath: 'images/bs2.png',
          ),
          const BlogBoxWidget(
            title: 'stock market',
            imagepath: 'images/bs3.png',
          ),
        ]),
      ),
    );
  }
}
