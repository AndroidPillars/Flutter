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

# Mac Setup

- Download the Flutter SDK in https://flutter.dev/docs/get-started/install
- Extract the downloaded zip Folder.
- Move the folder by pressing -> command + up arrow -> till you find Macintosh HD -> Users -> User Name
- Create a Folder as 'Developer' inside the User Name.
- Put the Flutter Folder inside the 'Developer'.
- Open Terminal
```ruby
vim .bash_profile
```
```ruby
export PATH="$PATH:/Users/gowthamr/Developer/flutter/bin"
```
- Then Press esc key,
```ruby
 :wq!
```
- Download Android from https://developer.android.com/studio
- Open Android Studio -> Preferences -> Plugins -> Install Flutter -> After reading Third-party plugins Privacy Notes
- It shows pop up as Plugin Dependencies Detected -> Select Yes to install Dart.
- Now, Restart Android Studio.


# Getting Started

- Open Android Studio -> File -> New Flutter Project -> Project name as 'flutter_demo'
- Check the Flutter SDK path
- Company domain name as example.com -> Finish

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
- It displays the popup -> checkout from Version Control -> Choose No.
- Now choose an existing Android studio project from the downloaded directory path.
- Once the project gets imported in Android Studio -> select Get dependencies Option.

# Hot Reload

- Hot reload feature quickly compile the newly added code in our file and sent the code to Dart Virtual Machine.
- Once done updating the Code Dart Virtual Machine update the app UI with widgets.
- Hot Reload takes less time then Hot restart.
- There is also a draw back in Hot Reload, If you are using States in your application then Hot Reload preservers the States so they will not update on Hot Reload our set to their default values. 

# Hot Restart

- Hot restart is much different than hot reload.
- In Hot restart it destroys the preserves State value and set them to their default.
- So if you are using States value in your application then After every hot restart the developer gets fully compiled application and all the states will set to their defaults.
- The app widget tree is completely rebuilt with new typed code. Hot Restart takes much higher time than Hot reload.

# Layout widgets

# Single-child layout widgets 

- Align, AspectRatio, Baseline, Center, ConstrainedBox, Container, CustomSingleChildLayout, Expanded, FittedBox, FractionallySizedBox, IntrinsicHeight, IntrinsicWidth,
LimitedBox, Offstage, OverflowBox, Padding, SizedBox, SizedOverflowBox and Transform.

Example:
```ruby
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,//For disable the debug showing banner
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea( // SafeArea indicates the Viewing Screen Area
            child: Container(
              height: 100.0,
              width: 100.0,
              //margin: EdgeInsets.all(20.0), // For all sides
              //margin: EdgeInsets.symmetric(vertical: 50.0, horizontal: 10.0),//For Horizontal and Vertical
              //margin:  EdgeInsets.fromLTRB(30.0, 10.0, 50.0, 20.0),//For Left, Top, Right and Bottom
              margin: EdgeInsets.only(left: 30.0),//For Left only
              padding: EdgeInsets.all(20.0),//EdgeInsets in Padding having the similar Option that of EdgeInsets in margin
              child: Text('Hello World'),
              color: Colors.orange,
            ),
          ),
      ),
    );
  }
}
```

# Multi-child layout widgets

- Column, CustomMultiChildLayout, Flow, GridView, IndexedStack, LayoutBuilder, ListBody, ListView, Row, Stack, Table and Wrap

```ruby
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //For disable the debug showing banner
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
            // SafeArea indicates the Viewing Screen Area
            child: Column( // To make Layout in Vertical Direction
              // mainAxisSize: MainAxisSize.min, //Which makes the width as wrap content
              // verticalDirection: VerticalDirection.down, //Which begins from up to down
              // verticalDirection: VerticalDirection.up, //Which begins from down to up
              // mainAxisAlignment: MainAxisAlignment.center, // which setting similar to that of layout gravity and gravity
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly, // which gives equal space to the items similar to that of weight
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // crossAxisAlignment: CrossAxisAlignment.end, // which indicates that in Opposite side of MainAxisAlignment
              crossAxisAlignment: CrossAxisAlignment.stretch, // which indicates the child item to fill Parent so that we don't need
              // to set the width in the Container
              children: <Widget>[
                Container(
                  height: 100.0,
                  child: Text('Container 1'),
                  color: Colors.orange,
                ),
                SizedBox(height: 20.0,),// Helps us to give empty space
                Container(
                  height: 100.0,
                  child: Text('Container 2'),
                  color: Colors.blue,
                ),
                SizedBox(height: 20.0,),// Helps us to give empty space
                Container(
                  height: 100.0,
                  child: Text('Container 3'),
                  color: Colors.red,
                ),
              ],
        )),
      ),
    );
  }
}
```
__ For more please refer, __
- https://flutter.dev/docs/development/ui/widgets/layout
- https://medium.com/flutter-community/flutter-layout-cheat-sheet-5363348d037e

# Points to get Remember

- For Checking Flutter Version
```ruby
flutter --Version
```
- For checking local development environment
```ruby
flutter --doctor
```
- File -> Settings -> Editor -> Appearance  -> Enable Show closing label in Dart source code.
- FlutterInspector -> More Actions -> Hide Debug Mode Banner.
- Hot Reload works on Stateless and Stateful Widgets only.
- To show Intension Action -> Select widgets or class and press Alt + Enter
- To enable Flutter Inspector -> Search -> Flutter Inspector -> Enable Open Flutter Inspector view on app launch

# Documentation References

- https://flutter.dev/docs
- https://material.io/

# Tools References

- https://www.draw.io/
- https://appicon.co/
- https://icons8.com/
- https://www.vecteezy.com/
- https://www.canva.com/

