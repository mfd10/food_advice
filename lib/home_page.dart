import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late var soupNo = 1;
  late var foodNo = 1;
  late var desertNo = 1;
  void changeNumber() {
    foodNo = Random().nextInt(5) + 1;
    soupNo = Random().nextInt(5) + 1;
    desertNo = Random().nextInt(5) + 1;
  }

  List<String> soupNames = [
    'tarhana',
    'mercımek',
    'married',
    'domates',
    'mantar'
  ];
  List<String> desertNames = [
    'Kadayıf',
    'Baklava',
    'Sütlaç',
    'Kazandibi',
    'Dondurma'
  ];
  List<String> foodNames = [
    'Karnıyarık',
    'Mantı',
    'Kuru Fasulye',
    'İçli Köfte',
    'Izgara Balık'
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white)),
                onPressed: () {
                  setState(() {
                    changeNumber();
                  });
                },
                child: Image.asset('assets/corba_$soupNo.jpg')),
          )),
          Text(
            soupNames[soupNo - 1],
            style: const TextStyle(fontSize: 18),
          ),
          const Divider(height: 10, color: Colors.black, thickness: 2),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white)),
                onPressed: () {
                  setState(
                    () {
                      changeNumber();
                    },
                  );
                },
                child: Image.asset('assets/yemek_$foodNo.jpg')),
          )),
          Text(
            foodNames[foodNo - 1],
            style: const TextStyle(fontSize: 18),
          ),
          const Divider(height: 10, color: Colors.black, thickness: 2),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white)),
                onPressed: () {
                  setState(() {
                    changeNumber();
                  });
                },
                child: Image.asset('assets/tatli_$desertNo.jpg')),
          )),
          Text(
            desertNames[desertNo - 1],
            style: const TextStyle(fontSize: 18),
          ),
        ],
      ),
    );
  }
}
