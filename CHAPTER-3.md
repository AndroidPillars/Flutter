# Working with Cutom Fonts

- To Load Custom Fonts from app -> Project Name -> Right Click -> New -> Directory -> fonts
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

# Working with Material Icons
__Read the Documentation in__ 
- https://api.flutter.dev/flutter/material/Icons-class.html
- https://material.io/resources/icons/?style=baseline
- https://www.materialpalette.com/

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
              Container(
                color: Colors.white,
                padding: EdgeInsets.all(10.0),
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0 ),
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.phone,
                      color: Colors.teal.shade900,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      '+919191919191',
                      style: TextStyle(
                        color: Colors.teal.shade900,
                        fontFamily: 'Source Sans Pro',
                        fontSize: 20.0,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                padding: EdgeInsets.all(10.0),
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0 ),
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.email,
                      color: Colors.teal.shade900,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      'androidpillars@gmail.com',
                      style: TextStyle(
                        color: Colors.teal.shade900,
                        fontFamily: 'Source Sans Pro',
                        fontSize: 20.0,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

```

# Working with Card
__Read the Documentation in__ 
- https://api.flutter.dev/flutter/material/Card-class.html 

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
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0 ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.phone,
                        color: Colors.teal.shade900,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        '+919191919191',
                        style: TextStyle(
                          color: Colors.teal.shade900,
                          fontFamily: 'Source Sans Pro',
                          fontSize: 20.0,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0 ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.email,
                        color: Colors.teal.shade900,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        'androidpillars@gmail.com',
                        style: TextStyle(
                          color: Colors.teal.shade900,
                          fontFamily: 'Source Sans Pro',
                          fontSize: 20.0,
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

```

# Working with ListTile, Column and Divider
__Read the Documentation in__ 
- https://api.flutter.dev/flutter/material/ListTile-class.html
- https://api.flutter.dev/flutter/widgets/Column-class.html
- https://api.flutter.dev/flutter/material/Divider-class.html

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
            mainAxisAlignment: MainAxisAlignment.center,
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
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.teal.shade100,
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0 ),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.teal.shade900,
                  ),
                  title: Text(
                    '+919191919191',
                    style: TextStyle(
                      color: Colors.teal.shade900,
                      fontFamily: 'Source Sans Pro',
                      fontSize: 20.0,
                    ),
                  ),
                )
              ),
              Card(
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0 ),
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Colors.teal.shade900,
                    ),
                    title: Text(
                      'android@gmail.com',
                      style: TextStyle(
                        color: Colors.teal.shade900,
                        fontFamily: 'Source Sans Pro',
                        fontSize: 20.0,
                      ),
                    ),
                  )
              ),
            ],
          ),
        ),
      ),
    );
  }
}
```

# Working with Expanded

- A Widget that expands a child of a Row, Column, or Flex   
- __Read the Documentation in,__ https://api.flutter.dev/flutter/widgets/Expanded-class.html

```ruby
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
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

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Row(
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Image.asset('images/dice1.png'),
                ),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Image(
                    image: AssetImage('images/dice1.png'),
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

```

# Working with Buttons

__Read the Documentation in__ 
- https://flutter.dev/docs/development/ui/widgets/material#Buttons

```ruby
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
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

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Row(
            children: <Widget>[
              Expanded(
                flex: 2,
                child: FlatButton(
                  onPressed: () {
                    print('Left Button is Clicked');
                  },
                  child: Image.asset('images/dice1.png'),
                ),
              ),
              Expanded(
                flex: 2,
                child: FlatButton(
                  onPressed: () {
                    print('Right Button is Clicked');
                  },
                  child: Image(
                    image: AssetImage('images/dice1.png'),
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

```

