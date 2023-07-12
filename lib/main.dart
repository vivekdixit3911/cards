// ignore_for_file: camel_case_types

import 'dart:math';

import 'package:flutter/material.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "DICE SHUFFLE",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.teal,
        ),
        backgroundColor: Color.fromARGB(252, 255, 255, 255),
        body: cards(),
      ),
    );
  }
}

class cards extends StatefulWidget {
  const cards({super.key});

  @override
  State<cards> createState() => _cardsState();
}

class _cardsState extends State<cards> {
  int s = 5;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        OutlinedButton(
          onPressed: () {
            setState(() {
              s = Random().nextInt(52) + 1;
              print("clicked $s");
            });
          },
          child: Image.asset("assets/cards ($s).png"),
        )
      ],
    );
  }
}
