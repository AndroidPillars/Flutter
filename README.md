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

# Prerequisites for Flutter Development:

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
void main() => runApp(
      MaterialApp(
        home: Center(
          child: Text('Hello world'),
        ),
      ),
    );
```    



<img align="right" width="100" height="100" src="http://www.fillmurray.com/100/100">
