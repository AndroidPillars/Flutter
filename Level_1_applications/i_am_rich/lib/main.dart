import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            backgroundColor: Colors.deepPurple,
            appBar: AppBar(
              title: Text('I Am Rich'),
              backgroundColor: Colors.deepPurpleAccent,
            ),
            body: Center(
              child: Image(
                image: AssetImage('images/diamond.png'),
              ),
            ),
          )),
    );
