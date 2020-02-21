# Flutter

- A Flutter is simply a toolkit that makes it easy to developers to design a beautiful interfaces, also screen sizes and devices
which comes with a whole bunch of pre-build widgets that makes it easy to layout our App.
- It adopts the screen design widgets according to their platform in a Native way.(i.e)AlertDialog differs between android and IOS.
- Deploy that code to different devices and platform with out changing that code.
- We can build Application in Android, IOS and even Web and Desktop with single code base using Dart.
- For Adopting all screen ratio to various platform, Flutter introduced lot of core concepts from web.(i.e)eg. using Row, Column, Stack, Padding and Center.

# Why Flutter

- It is a single code base.
- Dart -> It is a powerful language that is quite easy to work and is very similar to Oops. So we can learn easily.
- We can use Flutter and Dart to build Android, IOS mobile Apps and even web application that run on your desktop.
- Flutter allows you to build a simple and Flexible layout system to build beautiful interfaces.
- Hot Reload -> Instant run with in a Second.
- It's a Open source.

# The Anatomy of Flutter App

- Scaffold -> AppBar and Container ->The Container is having Column -> Row and Text -> In Row we are adding Text and Icon.
- Simply a widget tree that consists of whole number of widgets that are nested with each other.

<p align="center">
 <img src="https://user-images.githubusercontent.com/48873155/74207110-2f4acc00-4ca4-11ea-99cf-e41c9b403b70.png"/>
</p>
<p align="center">
 <img src="https://user-images.githubusercontent.com/48873155/74207299-08d96080-4ca5-11ea-8f8f-120b987a3542.png"/>
</p>

# Development Tools

- Android Studio and VS Code.
- Both are enough capable for developing Flutter.
- System Space -> 10GB -> For smooth experience.
- Flutter -> https://flutter.dev/docs/get-started/install
- Android Studio -> https://developer.android.com/studio
- Xcode -> https://developer.apple.com/xcode/
- Git -> https://git-scm.com
- Visual Studio Code -> https://code.visualstudio.com/

# Prerequisites for Flutter Development

- Android Apps -> Mac or PC -> Android Studio -> Android Emulatoror Physical device.
- iOS Apps -> Mac -> Android Studio -> iOS Simulator or Physical device.

# Installation

- Download Flutter SDK -> Extract -> create a folder named src -> paste -> double click flutter_console.bat 
```ruby
flutter --version
```
-> Then set environment variable -> search -> env -> 

# Getting Started

- Open Android Studio -> File -> New Flutter Project -> Project name as 'flutter_demo' -> Next
- Company domain name as androidpillars.com -> Finish

# MaterialApp Class

- MaterialApp is a predefined class in a flutter. 
- It is likely the main or core component of flutter. 
- MaterialApp is the starting point of your app, it tells Flutter that you are going to use Material components and follow material design in your app.

```ruby
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Center(
          child: Text('Hello world'),
        ),
      ),
    );
```  

# Scaffold Widet

- A Scaffold Widget is used under MaterialApp, it gives you many basic functionalities like AppBar, BottomNavigationBar, Drawer, FloatingActionButton etc.

```ruby
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blueGrey,
          appBar: AppBar(
            centerTitle: true,
            title: Text('Home'),
            backgroundColor: Colors.blueGrey[900],
          ),
          body: Center(
            child: Image(
              image: NetworkImage(
                  'https://www.w3schools.com/w3css/img_lights.jpg'),
            ),
          ),
        ),
      ),
    );
```

# Working with Assets

- To Load images from app -> Project Name -> Right Click -> New -> Directory -> images
- Put some .png format images in that folder.
- Open pubspec.yaml -> assets -> - images/diamond.png (or) - images/ (To Load All images with out giving their name)
- Select Packages get 

```ruby
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blueGrey,
          appBar: AppBar(
            centerTitle: true,
            title: Text('Home'),
            backgroundColor: Colors.blueGrey[900],
          ),
          body: Center(
            child: Image(
              image: AssetImage('images/diamond.png')
            ),
          ),
        ),
      ),
    );
```
# Change Launcher Icon

- Select Android Folder -> Select res -> Right Click -> Reveal in Finder (For mac) and show in Explorer (For Windows)
- Replace the mipmap folders -> Downloaded from  https://appicon.co/
- Select ios Folder -> Select Runner -> then Select Assets.xcassets
- Replace the Assets.xcassets folders -> Downloaded from  https://appicon.co/
- In Android for Loading Launcher icons in different styles -> Select Android Folder ->  Select res -> 
Right Click -> New -> Image Asset -> choose the path of the image -> Resize -> Next -> Finish

# Running App on a Physical Device

- In Android Mobile -> Go to Settings -> About -> Build number -> Tap multiple times until you get the message 'Developer mode is Enabled'(or) It may vary depending on the versions of the Mobile OS. 
- In Some Versions of Android -> Settings -> About Phone -> Versions -> Tap multiple times to enable developer option.
- In settings you will get the menu Developer Options -> Enable Developer Options and USB debugging.

# Import project from GitHub

- Copy the URL link from GitHub by selecting clone or download.
- Open Android Studio -> check out project from version control -> Select Git. 
- Paste the URL and choose the Directory path -> Select clone.

# Settings

- File -> Settings -> Editor -> Appearance  -> Enable Show closing label in Dart source code.
- FlutterInspector -> More Actions -> Hide Debug Mode Banner.

# References

- https://flutter.dev/docs
- https://material.io/
- https://www.draw.io/
- https://appicon.co/
- https://icons8.com/
- https://www.vecteezy.com/
- https://www.canva.com/




<img align="right" width="100" height="100" src="http://www.fillmurray.com/100/100">
