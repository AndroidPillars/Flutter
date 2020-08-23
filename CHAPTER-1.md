# 1.0.Flutter

- A Flutter is simply a toolkit that makes it easy to developers to design a beautiful interfaces, also screen sizes and devices
which comes with a whole bunch of pre-build widgets that makes it easy to layout our App.
- It adopts the screen design widgets according to their platform in a Native way.(i.e)AlertDialog differs between android and IOS.
- Deploy that code to different devices and platform with out changing that code.
- We can build Application in Android, IOS and even Web and Desktop with single code base using Dart.
- For Adopting all screen ratio to various platform, Flutter introduced lot of core concepts from web.(i.e)eg. using Row, Column, Stack, Padding and Center.

# 1.1.Why Flutter

- It is a single code base.
- Dart -> It is a powerful language that is quite easy to work and is very similar to Oops. So we can learn easily.
- We can use Flutter and Dart to build Android, IOS mobile Apps and even web application that run on your desktop.
- Flutter allows you to build a simple and Flexible layout system to build beautiful interfaces.
- Hot Reload -> Instant run with in a Second.
- It's a Open source.

# 1.2.The Anatomy of Flutter App

- Scaffold -> AppBar and Container ->The Container is having Column -> Row and Text -> In Row we are adding Text and Icon.
- Simply a widget tree that consists of whole number of widgets that are nested with each other.

<p align="center">
 <img src="https://user-images.githubusercontent.com/48873155/74207110-2f4acc00-4ca4-11ea-99cf-e41c9b403b70.png"/>
</p>
<p align="center">
 <img src="https://user-images.githubusercontent.com/48873155/74207299-08d96080-4ca5-11ea-8f8f-120b987a3542.png"/>
</p>

# 1.3.Development Tools

- Android Studio and VS Code.
- Both are enough capable for developing Flutter.
- System Space -> 10GB -> For smooth experience.
- Flutter -> https://flutter.dev/docs/get-started/install
- Android Studio -> https://developer.android.com/studio
- Xcode -> https://developer.apple.com/xcode/
- Git -> https://git-scm.com
- Visual Studio Code -> https://code.visualstudio.com/

# 1.4.Mac Setup

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


# 1.5.Getting Started

- Open Android Studio -> File -> New Flutter Project -> Project name as 'flutter_demo'
- Check the Flutter SDK path
- Company domain name as example.com -> Finish

# 1.6.Points to get Remember

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
- To use Intension Action -> Select Flutter Outline and press first icon at Top left to set the widget at center.
- If we wanna to remove an widget -> Select widgets -> Yellow bulb icon will show at left side -> where you are having
the option to remove widget.
- We can check the warnings through clicking Dart Analysis at Bottom menu.
- For Creating new project in Visual Studio Code -> Command palette -> Flutter: New Project

# 1.7.Documentation References

- https://flutter.dev/docs
- https://material.io/
- https://dartpad.dartlang.org/

# 1.8.Tools References

- https://www.draw.io/
- https://appicon.co/
- https://icons8.com/
- https://www.vecteezy.com/
- https://www.canva.com/
- https://www.materialpalette.com/
