# Working with Cutom Fonts

- To Load images from app -> Project Name -> Right Click -> New -> Directory -> fonts
- Download the font you need in https://fonts.google.com/
- Paste the downloaded font in fonts folder.
- Open pubspec.yaml and refer the following documentation(i.e) https://flutter.dev/docs/cookbook/design/fonts#from-packages
- Finally Select Packages get 

```ruby
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
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundColor: Colors.red,
                backgroundImage: AssetImage('images/android_robo.png'),
              ),
              Text(
                'Android',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                    fontSize: 40.0,
                    color: Colors.teal.shade100,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'Flutter Developer',
                style: TextStyle(
                    fontFamily: 'Source Sans Pro',
                    fontSize: 20.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.5),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
```
__In pubspec.yaml__

```ruby
name: mi_card
description: A new Flutter application.

version: 1.0.0+1

environment:
  sdk: ">=2.1.0 <3.0.0"

dependencies:
  flutter:
    sdk: flutter

  cupertino_icons: ^0.1.2

dev_dependencies:
  flutter_test:
    sdk: flutter

flutter:

  uses-material-design: true

  assets:
    - images/android_robo.png

  fonts:
    - family: Pacifico
      fonts:
        - asset: fonts/Pacifico-Regular.ttf

    - family: Source Sans Pro
      fonts:
        - asset: fonts/SourceSansPro-Regular.ttf
}
```

