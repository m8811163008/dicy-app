import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int diceOneNumber = 1;
  int diceTwoNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                updateNumber();
              },
              child: Image.asset('images/dice$diceOneNumber.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                updateNumber();
              },
              child: Image.asset('images/dice$diceTwoNumber.png'),
            ),
          )
        ],
      ),
    );
  }

  void updateNumber() {
    setState(() {
      diceTwoNumber = Random().nextInt(6) + 1;
      diceOneNumber = Random().nextInt(6) + 1;
    });
  }
}
