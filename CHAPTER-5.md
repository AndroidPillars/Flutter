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
