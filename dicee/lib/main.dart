import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          centerTitle: true,
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
  int leftDiceeNumber = 1;
  int rightDiceeNumber = 1;

  void chageDice() {
    setState(() {
      leftDiceeNumber = Random().nextInt(6) + 1;
      rightDiceeNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                chageDice();
              },
              child: Image.asset('images/dice$leftDiceeNumber.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                chageDice();
              },
              child: Image.asset('images/dice$rightDiceeNumber'
                  '.png'),
            ),
          ),
        ],
      ),
    );
  }
}
