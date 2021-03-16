## MaterialApp Class

- MaterialApp is a predefined class in a flutter. 
- It is likely the main or core component of flutter. 
- MaterialApp is the starting point of your app, it tells Flutter that you are going to use Material components and follow material design in your app.
- __Material Design__ is just simply a design style or concept that was created by google and in flutter we are having lot of material components by using the Flutter widgets.
- These are some widgets used in the Flutter Material library are Checkboxes, Radio Buttons, Text Fields, DateTime Pickers and Buttons.

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

## Scaffold Widet

- A Scaffold Widget is used under MaterialApp, it gives you many basic functionalities like AppBar, BottomNavigationBar, Drawer, FloatingActionButton etc.
- In __Other terms,__ A Scaffold Widget provides a framework which implements the basic material design visual layout structure of the flutter app. 
- It provides APIs for showing drawers, snack bars and bottom sheets. 

__main.dart__

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

## Working with Assets and pubspec file

- To Load images from app -> Project Name -> Right Click -> New -> Directory -> images
- Put some .png format images in that folder.
- Open pubspec.yaml -> assets -> - images/diamond.png (or) - images/ [To Load All images with out giving their name]
- Select Packages get 

__main.dart__

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

__pubspec.yaml__

- This is a special type of file called yaml file which stands for YAML Ain't Markup Language.
- It's meant to be this human readable type of language that machines can also understand, to interupt how you want to configure certain things, such as our Flutter project.
- When we are working working with yaml fie we should be very careful about the intentation(i.e.) Every indent is two spaces.
- In __simple terms__, it is a file where you can provide all the dependencies (optional and required — e.g., plugins, Dart version, font, images) of your Flutter project and     also a place where you configure the project’s name and description.

```ruby
flutter:

  # The following line ensures that the Material Icons font is
  # included with your application, so that you can use the icons in
  # the material Icons class.
  uses-material-design: true

  # To add assets to your application, add an assets section, like this:
  assets:
    - images/

```

## Change Launcher Icon

- Choose any .png format image. 
- Now, Select Android Folder -> Select res -> Right Click -> Reveal in Finder (For mac) and show in Explorer (For Windows)
- Replace the mipmap folders -> Downloaded from  https://appicon.co/
- Select ios Folder -> Select Runner -> then Select Assets.xcassets
- Replace the Assets.xcassets folders -> Downloaded from  https://appicon.co/
- In Android for Loading Launcher icons in different styles -> Select Android Folder ->  Select res -> 
  Right Click -> New -> Image Asset -> choose the path of the image -> Resize -> Next -> Finish

## Running App on a Physical Device

__For Android,__

- In Android Mobile -> Go to Settings -> About -> Build number -> Tap multiple times until you get the message 'Developer mode is Enabled'(or) It may vary depending on the versions of the Mobile OS. 
- In Some Versions of Android -> Settings -> About Phone -> Versions -> Tap multiple times to enable developer option.
- In settings you will get the menu Developer Options -> Enable Developer Options and USB debugging.
- For Further reference, check https://developer.android.com/studio/run/device

__For IOS,__ 

- For IOS, you need an Apple ID and Xcode.
- IOS version is compatible with the Xcode Version.
- Install homebrew.
- Use homebrew to install ideviceinstaller,ios-deploy and cocoapods.
- Add appleid to Xcode.
- Right click ios Folder from the project -> Open IOS module in Xcode. (or) Reveal in folder -> open ios Folder -> Double click Runner.xcworkspace.
- Now Click Runner Project -> In signing -> Team -> Add Account by using your AppleID and set your Name.
- In phone -> Settings -> General -> Device Management -> Enterprise App -> Trust.
- Now finally, Create a unique Bundle ID. (i.e) Runner -> Bundle Identifier -> com gowtham.appName
- In AndroidStudio -> Tools -> Flutter -> Flutter doctor -> to check the configuration is done correctly.
- For Further reference, check https://flutter.dev/docs/get-started/install/macos#set-up-the-ios-simulator


## Import project from GitHub

- Copy the URL link from GitHub by selecting clone or download.
- Open Android Studio -> check out project from version control -> Select Git. 
- Paste the URL and choose the Directory path -> Select clone.
- It displays the popup -> checkout from Version Control -> Choose No.
- Now choose an existing Android studio project from the downloaded directory path.
- Once the project gets imported in Android Studio -> select Get dependencies Option.

## Hot Reload

- Hot reload feature quickly compile the newly added code in our file and sent the code to Dart Virtual Machine.
- Once done updating the Code Dart Virtual Machine update the app UI with widgets.
- Hot Reload takes less time then Hot restart.
- There is also a draw back in Hot Reload, If you are using States in your application then Hot Reload preservers the States so they will not update on Hot Reload our   set to their default values. 

## Hot Restart

- Hot restart is much different than hot reload.
- In Hot restart it destroys the preserves State value and set them to their default.
- So if you are using States value in your application then After every hot restart the developer gets fully compiled application and all the states will set to their             defaults.
- The app widget tree is completely rebuilt with new typed code. 
- Hot Restart takes much higher time than Hot reload.

## Layout widgets

- Two Types -> Single-child layout widgets & Multi-child layout widgets.

## Single-child layout widgets 

- The single child layout widget is a type of widget, which can have only one child widget inside the parent layout widget.
- Align, AspectRatio, Baseline, Center, ConstrainedBox, Container, CustomSingleChildLayout, Expanded, FittedBox, FractionallySizedBox, IntrinsicHeight, IntrinsicWidth,
  LimitedBox, Offstage, OverflowBox, Padding, SizedBox, SizedOverflowBox and Transform.

__main.dart__

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

## Multi-child layout widgets

- The multiple child widgets are a type of widget, which contains more than one child widget, and the layout of these widgets are unique. 
- Column, CustomMultiChildLayout, Flow, GridView, IndexedStack, LayoutBuilder, ListBody, ListView, Row, Stack, Table and Wrap

__main.dart__

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

## Reference Links

- https://flutter.dev/docs/development/ui/widgets/layout
- https://medium.com/flutter-community/flutter-layout-cheat-sheet-5363348d037e
- https://medium.com/@dev.n/the-complete-flutter-series-article-2-basic-widgets-and-layout-in-flutter-92a4fbd4a3e1
