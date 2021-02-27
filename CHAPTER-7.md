## Futures, Asysnc and Await

- __Async__ means that this function is asynchronous and you might need to wait a bit to get its result.
- __Await__ literally means - wait here until this function is finished and you will get its return value.
- __Future__ is a type that ‘comes from the future’ and returns value from your asynchronous function. 
- It can complete with success(.then) or with an error(.catchError).
- __.Then((value){…})__ is a callback that’s called when future completes successfully(with a value).

__Example for Synchronous__

```ruby
import 'dart:io';

void main() {
  performTasks();
}

void performTasks() {
  task1();
  task2();
  task3();
}

void task1() {
  String result = 'task 1 data';
  print('Task 1 complete');
}

void task2() {
  Duration threeSeconds = Duration(seconds: 3);
  sleep(threeSeconds);
  String result = 'task 2 data';
  print('Task 2 complete');
}

void task3() {
  String result = 'task 3 data';
  print('Task 3 complete');
}
```

__Example for Asynchronous__

```ruby
import 'dart:io';

void main() {
  performTasks();
}

void performTasks() {
  task1();
  task2();
  task3();
}

void task1() {
  String result = 'task 1 data';
  print('Task 1 complete');
}

void task2() {
  Duration threeSeconds = Duration(seconds: 3);
  Future.delayed(threeSeconds, () {
    String result = 'task 2 data';
    print('Task 2 complete');
  });
}

void task3() {
  String result = 'task 3 data';
  print('Task 3 complete');
}
```

__Example for Futures, Asysnc and Await__

```ruby
import 'dart:io';

void main(){
  performTasks();
}

void performTasks() async{
  task1();
  String taskTwoResult = await task2();
  task3(taskTwoResult);
}

void task1() {
  String result = 'task 1 data';
  print('Task 1 complete');
}

Future task2() async{
  Duration threeSeconds = Duration(seconds: 3);
  String result;
  Future.delayed(threeSeconds, () {
    result = 'task 2 data';
    print('Task 2 complete');
  });

  return result;
}

void task3(String resultData) {
  String result = 'task 3 data';
  print('Task 3 complete$resultData');
}
```

## Widgets Lifecycle Methods

__Stateless Widget__

- A stateless widget can only be drawn once when the Widget is loaded/built. 
- A stateless widget cannot be redrawn based on any events or user actions. 
- In the below exampl, Screen is a Stateless widget and it has overridden the function called Widget build(BuildContet context) which returns one widget. 
- So, whenever Screen is instantiated, it will call the build(...) function and draw the widgets returned by this function.

```ruby
class Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return null;
  }
}
```

__Stateful Widget__

- The Stateful widget is mutable that's why it can be drawn multiple times within its lifetime. 
- It is useful when we dynamically update screen of app on user actions. 
- The build(...) method of state can be called multiple times during its lifetime and every build may return new or different widgets based on mulitple parameters.

```ruby
class ScreenState extends State<Screen> {
  @override
  void initState(){
    super.initState();
    // This will called at first
  }
  @override
  void didChangeDependencies(){
    super.didChangeDependencies();
    // Additional code
  }
  @override
  void dispose(){
    // This calls when the screen gets destroyed
    super.dispose();
  }
  @override
  Widget build(BuildContext context){
    //This calls once initializes the UI
    return null;
  }
}
```

## Exception Handling and Null Aware Operators

- The Exception Handling is a mechanism to handle the runtime errors so that normal flow of the application can be maintained.
- In Java, all exception classes are descendants of class Throwable.
- four keyword Types -> try, catch, finally and throw
- Types -> Checked Exception, Unchecked Exception and Errors

__Checked Exception__

- Checked exception is checked at compile time. 
- This exception type extends the Throwable class.
- Example: IOException, SQLException, FileNotFoundException, ClassNotFoundException etc.

__Unchecked Exception__

- Unchecked exceptions are not checked at compile-time, but they are checked at runtime.
- Example:  ArithmeticException, NullPointerException, ArrayIndexOutOfBoundsException etc.

__Error__

- Error is irrecoverable.
- Example: OutOfMemoryError, VirtualMachineError, AssertionError etc.

__Example__

```ruby
main() {
 
  String myString = 'abc';
  
  try{
    double myStringAsDouble = double.parse(myString);
    print(myStringAsDouble + 5);
  } catch(e){
    print(e);
  }
}
```

__Null Aware Operators__

- Null-aware operators in dart allow you to make computations based on whether or not a value is null. 
- It’s shorthand for longer expressions.

__Syntax__

```ruby
mVariable ?? defaultValue
```

## Getting Current Location

__pubspec.yaml__

```ruby
dependencies:
  flutter:
    sdk: flutter

  cupertino_icons: ^0.1.2
  geolocator: ^6.2.1
```

__AndroidManifest.xml__

```ruby
<uses-permission android:name="android.permission.ACCESS_COARSE_LOCATION" />
```

__Info.plist__

```ruby
<key>NSLocationWhenInUseUsageDescription</key>
<string>This app needs access to location when open.</string>
```

__loading_screen.dart__

```ruby
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    getLocation();
  }

  void getLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);
      print(position);
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
```

## API [Application Programming Interface]

- API request is a way of sending messages to software on another computer over the internet or over a network.
- A web browser will usually make GET requests and POST requests.
- __Note:__ For getting the json sample response visit, https://openweathermap.org/api
- Two Types of Response -> JSON and XML.

__JSON__

- JSON stands for JavaScript Object Notation. 
- It's an open-standard file format that is used for browser-server communications. 
- It's a language-independent data format. 

```ruby
{key:value}
```

__XML__

- XML stands for Extensible Markup Language. 
- It's a set of rules that help the users to encode documents in a human-readable format and machine-readable.

```ruby
<key>value</key>
```

__loading_screen.dart__

```ruby
import 'package:flutter/material.dart';
import 'package:clima/services/location.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    getLocation();
  }

  void getLocation() async {
    Location mLocation = Location();
    await mLocation.getCurrentLocation();

    print(mLocation.latitude);
    print(mLocation.longitude);
  }

  void getData() async {
    http.Response response = await http.get(
        'http://samples.openweathermap.org/data/2.5/weather?lat=35&lon=139&appid=1c56d238e55dbd7e02da908c3292da01'); // you have to add your own app id
    if (response.statusCode == 200) {
      String data = response.body;
      var decodeData = jsonDecode(data);

      double longitude = decodeData['coord']['lon'];
      String weatherDescription = decodeData['weather'][0]['description'];
    } else {
      print(response.statusCode);
    }
  }

  @override
  Widget build(BuildContext context) {
    getData();
    return Scaffold();
  }
}
```
