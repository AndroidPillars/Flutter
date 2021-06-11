import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.green,
          appBar: AppBar(
            backgroundColor: Colors.green[900],
            title: Text('Magic Ball'),
          ),
          body: MagicBall(),
        ),
      ),
    );

class MagicBall extends StatefulWidget {
  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int mRandomValue = 1;

  void mButtonSelected() {
    setState(() {
      mRandomValue = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                mButtonSelected();
              },
              child: Image.asset('images/ball$mRandomValue.png'),
            ),
          ),
        ],
      ),
    );
  }
}
