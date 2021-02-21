## Functions[Dart]

- A function is a block of organized, reusable code that is used to perform a single, related action.

__Creating the Function__

```ruby
void functionName(){
//To Do Something
}
```

__Calling the Function__

```ruby
functionName();
```

__Named Function__

```ruby
void functionName(){
//To Do Something
}
```

__Anonymous Function__

```ruby
(){
//To Do Something
}
```

__Example in Dart using Anonymous Function__

```ruby
onPressed: (){
//To Do Something
}
```

__Passing Arguments and Inputs in Function__

```ruby
void functionName(int mNumbers){
  mValues = 1.5 + mNumbers;
}

functionName(2);
```

```ruby
void main() {
  
  getTotalValues(mNumbers: 2);
    
}

void getTotalValues({int mNumbers}){
  
  print('TotalValues $mNumbers');
  
}
```

__Return Function__

```ruby
void main() {
  
  int mNumber = getTotalValues();
  
  print(mNumber);
    
}

int getTotalValues(){
  
 int i = 4;
  
  return i * 4;
}
```

__Example__

```ruby
void main() {
  
  int Step1Result = add(n1: 5, n2: 9);
  
  int Step2Result = multiply(Step1Result, 5);
  
  double finalResult = Step2Result / 3;
  
  print(finalResult);
    
}

int add({int n1, int n2}){
  
  return n1 + n2;
  
}

int multiply(int n1, int n2){
  
  return  n1 * n2;
  
}
```

__Using Arrow Function__

```ruby
void main() {
  
  int Step1Result = add(n1: 5, n2: 9);
  
  int Step2Result = multiply(Step1Result, 5);
  
  double finalResult = Step2Result / 3;
  
  print(finalResult);
    
}

int add({int n1, int n2}) => n1 + n2;
  

int multiply(int n1, int n2) => n1 * n2;
```

## Variables[Dart]

- Variable is “a named space in the memory” that stores values. In other words, it acts a container for values in a program.

```ruby
var myName = 'Android';
```

__where,__ 

- Var is Keyword that says, I am creating a Variable.    
- myName is a reference name of the Variable.    
- 'Android' is the name assigned to that Variable.

## Data Types

- Dart -> Statically Typed Language.
```ruby
void main() {
  var a = 'HelloWorld';
  a = 123;
  print(a);
}
```
- In the the above example, var a is having different data types but not able to change in Dart. 
- Dart also having a data type called dynamic.
```ruby
void main() {
  var a;
  a = 'HelloWorld';
  a = 123;
  print(a);
}
```
- Also we can done by using 'dynamic' keyword as below,
```ruby
void main() {
  dynamic a;
  a = 'HelloWorld';
  a = 123;
  print(a);
}
```
- String, int, double , bool -> all of this data types together known as primitive data types.
```ruby
void main() {
  String = 'HelloWorld';
  int b = 123; 
}
```
- JavaScript is dynamically Typed Language.
```ruby
var a = 'HelloWorld';
a = 123;
console.log(a);
```
- In the the above example, var a is having different data types but being able to change in JavaScript. 
- It is recommended to use sring, int, decimal instead of using var, dynamic to avoid the datatype errors.

## Stateful vs Stateless Widget

__Stateless Widget:__

- A widget that has an immutable state.
- Stateless Widgets are static widgets.
- They do not depend on any data change or any behavior change.
- Stateless Widgets do not have a state, they will be rendered once and will not update themselves, but will only be updated when external data changes.
- For Example: Text, Icon, RaisedButton are Stateless Widgets.

__Stateless Widget:__

- A widget that has a mutable state.
- Stateful Widgets are dynamic widgets.
- They can be updated during runtime based on user action or data change.
- Stateful Widgets have an internal state and can re-render if the input data changes or if the Widget’s state changes.
- For Example: Checkbox, Radio Button, Slider are Stateful Widgets.

__main.dart__

```ruby
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
  _State createState() => _State();
}

class _State extends State<StatefulWidget> {
  var mLeftDice = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: FlatButton(
              onPressed: () {
                setState(() {
                  mLeftDice = 5;
                });
              },
              child: Image(
                image: AssetImage('images/dice$mLeftDice.png'),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: FlatButton(
              onPressed: () {},
              child: Image.asset('images/dice2.png'),
            ),
          )
        ],
      ),
    );
  }
}
```

## Randomising the Dice

```ruby
import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dice'),
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
            child: FlatButton(
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
            child: FlatButton(
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
```

# Flutter & Dart Packages

- Flutter packages are open source libraries of code that other peoplw have created which you can incorporate in to your project with minimal effort.
- __Visist__, https://pub.dev/
- Search or Select the packages based on the Ratings.
- Choose the Installing Tab and copy the dependencies and put that in pubspec.yaml File.
- Finally copy the import line and paste it in your Application.

```ruby
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(child: Text(nouns.first)),
        ),
      ),
    );
  }
}

```
__In pubspec.yaml__

```ruby
dependencies:
  flutter:
    sdk: flutter

  cupertino_icons: ^0.1.2
  english_words: ^3.1.5
```

# Playing Sound using Dart Packages

```ruby
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
              child: FlatButton(
            onPressed: () {
              final mPlayer = AudioCache();
              mPlayer.play('note1.wav');
            },
            child: Text('Click Me'),
          )),
        ),
      ),
    );
  }
}
```
__In pubspec.yaml__

```ruby
dependencies:
  flutter:
    sdk: flutter

  cupertino_icons: ^0.1.2
  audioplayers: ^0.17.0
```

# Playing Multiple Sound using Dart Packages

```ruby
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void mPlaySound(int mSoundNumber) {
    final mPlayer = AudioCache();
    mPlayer.play('note$mSoundNumber.wav');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: FlatButton(
                  color: Colors.red,
                  onPressed: () {
                    mPlaySound(1);
                  },
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.green,
                  onPressed: () {
                    mPlaySound(2);
                  },
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.yellow,
                  onPressed: () {
                    mPlaySound(3);
                  },
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.blue,
                  onPressed: () {
                    mPlaySound(4);
                  },
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.greenAccent,
                  onPressed: () {
                    mPlaySound(5);
                  },
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.amber,
                  onPressed: () {
                    mPlaySound(6);
                  },
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.black26,
                  onPressed: () {
                    mPlaySound(7);
                  },
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
__In pubspec.yaml__

```ruby
dependencies:
  flutter:
    sdk: flutter

  cupertino_icons: ^0.1.2
  audioplayers: ^0.17.0
```

# Code Refractor

```ruby
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void mPlaySound(int mSoundNumber) {
    final mPlayer = AudioCache();
    mPlayer.play('note$mSoundNumber.wav');
  }

  Expanded mBuildKey({Color mColor, int mSoundKey}) {
    return Expanded(
      child: FlatButton(
        color: mColor,
        onPressed: () {
          mPlaySound(mSoundKey);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              mBuildKey(mColor: Colors.red, mSoundKey: 1),
              mBuildKey(mColor: Colors.green, mSoundKey: 2),
              mBuildKey(mColor: Colors.blue, mSoundKey: 3),
              mBuildKey(mColor: Colors.yellow, mSoundKey: 4),
              mBuildKey(mColor: Colors.orange, mSoundKey: 5),
              mBuildKey(mColor: Colors.blueGrey, mSoundKey: 6),
              mBuildKey(mColor: Colors.black26, mSoundKey: 7),
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
dependencies:
  flutter:
    sdk: flutter

  cupertino_icons: ^0.1.2
  audioplayers: ^0.17.0
```

