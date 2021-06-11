import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dice Roller'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<StatefulWidget> {
  int mLeftDice = 1;
  int mRightDice = 1;

  void randomNumberSelection() {
    setState(() {
      mLeftDice = Random().nextInt(6) + 1;
      mRightDice = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: TextButton(
              onPressed: () {
                randomNumberSelection();
              },
              child: Image(
                image: AssetImage('images/dice$mLeftDice.png'),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: TextButton(
              onPressed: () {
                randomNumberSelection();
              },
              child: Image.asset('images/dice$mRightDice.png'),
            ),
          )
        ],
      ),
    );
  }
}
