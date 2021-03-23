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
      debugShowCheckedModeBanner: false,
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
