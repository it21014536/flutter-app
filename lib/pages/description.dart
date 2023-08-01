import 'package:flutter/material.dart';

String richText =
    'Are you ready to embark on a journey towards financial freedom and abundance? Our blog is here to guide you through the essential steps and valuable insights on how to get rich and attain prosperity in todays dynamic world. Discover tried-and-tested strategies, practical tips, and expert advice on building a solid financial foundation, growing your income streams, and making intelligent investment decisions. From managing your finances effectively to harnessing the power of entrepreneurship, we will delve into the secrets of successful individuals who have achieved remarkable wealth. Learn how to leverage technology, innovation, and your unique skills to create multiple streams of income, allowing you to generate passive earnings and gain financial independence. We will uncover the art of budgeting, saving, and debt management, empowering you to take control of your financial destiny and avoid common pitfalls. Explore the dynamic world of investment opportunities, from traditional stock markets to cutting-edge digital assets, as we provide you with insights into risk management and wealth preservation. Our blog will equip you with the knowledge and confidence to make informed decisions that align with your long-term financial goals. Join our community of like-minded individuals who are passionate about achieving financial success. Whether you are just starting your journey or looking to optimize your existing strategies, this blog is your ultimate resource to unlock the keys to lasting wealth and prosperity. Are you ready to take charge of your financial future? Stay tuned and lets embark on this transformative journey together. Remember, the path to wealth begins with the right knowledge and a determined mindset!';

class Descriptionpage extends StatelessWidget {
  const Descriptionpage({
    super.key,
    required this.title,
    required this.imagepath,
  });
  final String title;
  final String imagepath;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Image.asset(imagepath),
              Text(title,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  )),
              const SizedBox(height: 20),
              Text(
                richText, //variable
                style: const TextStyle(
                  fontSize: 18,
                ),
                textAlign: TextAlign.justify,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
