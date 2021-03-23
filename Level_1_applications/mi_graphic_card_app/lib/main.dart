import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.green,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: double.infinity,
              ),
              Container(
                width: 100.0,
                height: 100.0,
                child: CircleAvatar(
                  backgroundImage: AssetImage('images/diamond.png'),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                'Diamond',
                style: TextStyle(
                    fontFamily: 'Pacifico',
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              Text(
                'Jewellery',
                style: TextStyle(
                  fontFamily: 'SourceSansPro',
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  letterSpacing: 2.5,
                ),
              ),
              SizedBox(
                width: 140.0,
                height: 10.0,
                child: Divider(
                  color: Colors.white,
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.all(20.0),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.phone,
                        color: Colors.red,
                      ),
                      SizedBox(width: 10.0),
                      Text(
                        '+111 1111111',
                        style: TextStyle(fontFamily: 'SourceSansPro'),
                      )
                    ],
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.mail,
                    color: Colors.green,
                  ),
                  title: Text(
                    'gowthamappdeveloper',
                    style: TextStyle(fontFamily: 'SourceSansPro'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
