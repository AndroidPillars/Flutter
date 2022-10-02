## Stream

- Streams provide an asynchronous sequence of data.
- By subscribing to the stream of meassages you are essentailly able to get the piece of data as they come in and as they get added to the stream.
- Dart snapshots method gives us a stream and we can handle the stream using the widgets called StreamBuilder.
- There are two kinds of streams Single Subscription and Broadcast.
- __Single Subscription__ There could be a maximum of one listener to this stream and it listens to the values coming out of the stream.
- __Broadcast__ There could be the infinite number of the listener to this stream.

__Example__

```ruby
@override
Widget build(BuildContext context) {
  return StreamBuilder<QuerySnapshot>(
    stream: _firestore.collection('messages').snapshots(),
    builder: (context, snapshot) {
      if (!snapshot.hasData) {
        return Center(
          child: CircularProgressIndicator(
            backgroundColor: Colors.lightBlueAccent,
          ),
        );
      });
```  

__Extra Notes__

- When we want to insert something in to the stream we can use this stream controller to added to the stream sink and the way out of the stream can be accessed with this     	stream property of the stream controller.
- We can put simple values or events or objects or collections or maps and you could also pass arrows as well.
- Stream controller is normally used to control the input of the stream.
- We can close the Stream Controller and the stream will receive a done event.

__Example__

```ruby
import 'dart:async';

void main() {
  final controller = StreamController();
  
  controller.sink.add(1);
  controller.sink.add(2);
  
  controller.stream.listen((value){
  print(value);
  });
}
```

__Example/Using Custom Logic__

```ruby
import 'dart:async';

void addLessThanFive(StreamController controller, int value){

  if(value < 5){
    controller.sink.add(value);
  } else {
    controller.sink.addError(StateError('$value is not less than 5'));
  }
}

void main() {
  final controller = StreamController();
  
  addLessThanFive(controller, 1);
  addLessThanFive(controller, 2);
  addLessThanFive(controller, 3);
  addLessThanFive(controller, 4);
  addLessThanFive(controller, 5);
  
  controller.close();
  
  //addLessThanFive(controller, 5);
  
  controller.stream.listen((value){
    print(value);
  }, onError: (error){
    print(error);
  }, onDone: (){
    print('done');
  });
}                           
```

## StreamBuilder

- It will turn our snapshots of data in to actual widgets when the new data arrives from the Stream it will get reduild.
- It will get done using the set state.
- In other words, set state will called every time there's a new value in the stream.
- It consists of two important things stream and builder.
- __stream__ In particular, it's a stream of query snapshots and it knows when new data comes to rebuild itself.
- __builder__ We have to provied the logic for the stream builder should actually do.

```ruby
@override
Widget build(BuildContext context) {
  return StreamBuilder<QuerySnapshot>(
    stream: _firestore.collection('messages').snapshots(),
    builder: (context, snapshot) {
      if (!snapshot.hasData) {
        return Center(
          child: CircularProgressIndicator(
            backgroundColor: Colors.lightBlueAccent,
          ),
        );
      });
```

## Firebase

- Firebase is mainly used to save our message data and our user details in the cloud by using their pre-built methods and classes.
- This includes things like analytics, authentication, databases, configuration, file storage, push messaging, and the list goes on. 
- The services are hosted in the cloud, and scale with little to no effort on the part of the developer.
- For Documentation and Creation, Visit https://firebase.google.com/
- Now Add a project.
- __For Android,__ Create the package name, Download google-services.json and add that in the app folder.
- Finally add Firebase SDK in the build.gradle as per the documentation.
- __For IOS,__ Need a MAC machine with XCode.
- Select the IOS App and Register our App using ios bundle ID.
- For Getting ios bundle ID -> Locate the ios path folder in our application and open Runner.xcodeproj using XCode.
- Now click Runner(top of the module) -> Check the name in Bundle identifier.
- Now copy or drag and put under the runner folder in our application.
- For Flutter packages Visit, https://github.com/FirebaseExtended/flutterfire
- Firebase Flutter Packages Setup Visit, https://pub.dev/packages/cloud_firestore/install
- Now add the following packages(i.e.) firebase_core, firebase_auth and cloud_firestore
- If cocoapods is not installed we have to install using the following link, https://cocoapods.org/
- Follow this link to get installed regarding cocoapods , https://github.com/flutter/flutter/issues/53685#issuecomment-606981550
- Now add the following packages in pubspec.yaml file.

__pubspec.yaml__

```ruby
dependencies:
  flutter:
    sdk: flutter

  cupertino_icons: ^0.1.2
  animated_text_kit: ^3.1.2
  firebase_core: ^0.3.4
  firebase_auth: ^0.8.4+4
  cloud_firestore: ^0.9.13+1
```
- Now, you can enable the Authentication in the Firebase and enable the necessary field that required.
- Now Go to FireStore -> start in test mode -> choose the location and set enabled. 
- For demo application visit, https://github.com/AndroidPillars/Flutter/tree/master/Level_4_applications/chat_app_using_firebase

## Flutter Architecture Patterns

__What is Architecture?__

- If you are building an application in an organized manner with some set of rules, describe proper functionalities and implement it with proper protocols, then it is called an Architecture.

## MVC

- It is a Model-View-Controller and the most commonly used architecture. 
- MVC helps us to separates the business logic and presentation layer from each other.
- These are the three components used in MVC.

__Model__
 
- It has business logic and Data State. 
- Getting and manipulating the data, communicates with the controller, interacts with the database, sometimes update the views.

__View__

- The __View__ refers to the xml files.
- It communicates with the controller and sometimes interacts with the model. 
- It passes some dynamic views through the controller.

__Controller__

- It is Activity/Fragment.
- It communicates with view and model.
- It takes the user input from view/REST services and process request Get data from the model and passes to the view.  

## Global State 

- Global state allows you to put data into a global object that can be accessed from any widget. 
- No need to pass around state between different widgets.
- Although global state allows your data to be shared and easily accessible from different widgets, it does not replace local state. 
- They are both different and are used in different context.
- There are several different ways of managing global state in Flutter and Some of them are BLoC, Redux, Inherited Widget, Inherited Model and Scoped Model.

## Different Types of Flutter State Management

- BloC
- setState
- Provider
- Scopped Model
- Lifting State Up
- MVC
- Mobx
- Inherited Widget
- Redux
- ValueNotifier

## Provider

- In Flutter development we use Provider for state management.
- We can use it to provide a value (usually a data model object) to anywhere in the widget tree. 
- Add the below dependency for accessing in to the application.

```ruby
provider: ^3.0.0+1
```
- For demo application visit, https://github.com/AndroidPillars/Flutter/tree/master/Level_4_applications/todey_app_using_provider  

## BLOC Pattern

- State Management Library used in Dart.
- It helps us to seperate Presentation Layer from the Business Logic.
- Three Layers -> UI, BLOC and Data
- UI -> Presentation Layer which is the User Interface (i.e.) Shows Specific Widgets based on the state of the block.
- It also handles the User Input that are translated to events and addeded to the block to trigger state changed.
- BLOC -> Business Logic Area which is the brain of our block.
- It takes the input from the presentation Layer based on the end user Action. 
- It takes as well as inputs from any application Life Cycle Events based on the Input it builds new states to be consumed by the UI.
- It is basically a bridge between data sources and our Widgets.  
- Data -> Split in to Data Providers that perform crud Operations on Database .
- It reduces lot of boilerplate code.
- We use few of the widgets like Bloc Provider, Bloc Builder, Bloc Listener and Bloc Consumer.
- The Equitable package is used to reduce lot of boilerplate code required to compare object and we will use whenever we will have a state change in our block.
- It will also compares whether the new state to emit differs from the previous once. Hence it compares the different objects and if there isn't a difference between the new state and the previous data the block will not emit a new state change at all that's what we are using equitable package.



- BLOC Provider -> By using the BLOC provider we can create a instance of a BLOC and we can use this widget as a dependency injection
- BLOC Builder -> It helps us to decide which widget to show on the screen based on the Latest state emitted by the bloc 
- BLOC Listener -> It differs from the Bloc Builder because now we are building different UI based on the state of the BLOC instead every time there is a state change 
we can invoke a Listener and by invoking a Listener we can define different functionality for our app.
For Example we can show a snackbar when there is a state change every time 
