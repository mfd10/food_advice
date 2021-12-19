import 'package:flutter/material.dart';
import 'package:food_advice/home_page.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    new HomePage();
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white10,
          title: const Text(
            "What Should ı eat ",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        body: const HomePage(),
      ),
    );
  }
}
