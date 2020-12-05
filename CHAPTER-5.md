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
