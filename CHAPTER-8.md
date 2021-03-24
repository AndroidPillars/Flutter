## Material Dropdown Button Widget

- Refer, https://flutter.dev/docs/development/ui/widgets/material

__PriceScreen.dart__

```ruby
import 'package:flutter/material.dart';

Container(
  height: 150.0,
  alignment: Alignment.center,
  padding: EdgeInsets.only(bottom: 30.0),
  color: Colors.lightBlue,
  child: DropdownButton(
    items: [
      DropdownMenuItem(
      child: Text('USD'),
      value: 'USD',
       ),
      DropdownMenuItem(
        child: Text('INR'),
        value: 'INR',
        ),
      DropdownMenuItem(
        child: Text('EUR'),
        value: 'EUR',
         ),
        ],
       onChanged: (value) {
        print(value);
      },
    ),
),
```

## For-Loop

- The Java for loop is used to iterate a part of the program several times.
- where, int i= 0; is the Initialization, i < 10; is the Condition and i++ increments the values

```ruby
main() {
  for (int i = 0; i < 10; i++) {   
       print(i);    
    };
  
  for (int i = 0; i < 10; i+=2) {   
    print(i);    
  };
  
  for (int i = 2; i < 10; i++) {   
    print(i);    
  };
  
  for (int i = 99; i > 0; i--) {   
    print(i);    
  };
}
```

__using for..in Loop__

```ruby
List<String> fruits = [
    'apple',
    'orange',
    'banana'
  ];

main() {
  for (String fruit in fruits){
    print(fruit);
  }
}
```

__Filter using for..in Loop__

```ruby
List<int> winningNumbers = [12, 6, 34, 22, 41, 9];

void main() {
 
  List<int> ticketOne = [45, 2, 9, 18, 12, 33];
  List<int> ticketTwo = [41, 17, 26, 32, 7, 35];
  
  checkNumber(ticketOne);
}

void checkNumber(List<int> myNumbers){
  
  int  matches = 0;

  for(int myNum in myNumbers){
    for(int winningNum in winningNumbers){
      if(winningNum == myNum){
          matches++;
      }
    }
  }
  print('Got $matches Matches');
}
```

## Cupertino Widgets

- Cupertino Widgets is similar to that which provides you the structure to your iOS application page layout, targeting your iOS design.
- In other words, CupertinoApp is used to build iOS like app and MaterialApp is used to build Android (Material) like app.

__PriceScreen.dart__

```ruby
import 'package:flutter/cupertino.dart';

Container(
  height: 150.0,
  alignment: Alignment.center,
  padding: EdgeInsets.only(bottom: 30.0),
  color: Colors.lightBlue,
  child: CupertinoPicker(
     backgroundColor: Colors.lightBlue,
     itemExtent: 32.0,
     onSelectedItemChanged: (selectedIndex) {
        print(selectedIndex);
     },
        children: [
          Text('USD'),
          Text('INR'),
          Text('EUR'),
        ],
))
```

## Platform Specific UI with Flutter

- Flutter is quite good at handling platform specific interactions. 
- For instance, you don’t need to write extra code for Android and iOS. 
- However, there might be patterns you want to implement differently on each platform in a platform-dependent way.

__PriceScreen.dart__

```ruby
import 'dart:io';

// Platform.isIOS // Returns true on iOS devices
// Platform.isAndroid // Returns true on Android devices

DropdownButton<String> androidDropdown() {
    List<DropdownMenuItem<String>> dropdownItems = [];
    for (String currency in currenciesList) {
      var newItem = DropdownMenuItem(
        child: Text(currency),
        value: currency,
      );
      dropdownItems.add(newItem);
    }

    return DropdownButton<String>(
      value: selectedCurrency,
      items: dropdownItems,
      onChanged: (value) {
        setState(() {
          selectedCurrency = value;
          getData();
        });
      },
    );
  }

  CupertinoPicker iOSPicker() {
    List<Text> pickerItems = [];
    for (String currency in currenciesList) {
      pickerItems.add(Text(currency));
    }

    return CupertinoPicker(
      backgroundColor: Colors.lightBlue,
      itemExtent: 32.0,
      onSelectedItemChanged: (selectedIndex) {
        setState(() {
          selectedCurrency = currenciesList[selectedIndex];
          getData();
        });
      },
      children: pickerItems,
    );
  }
  
Column(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  crossAxisAlignment: CrossAxisAlignment.stretch,
  children: <Widget>[
    makeCards(),
     Container(
        height: 150.0,
        alignment: Alignment.center,
        padding: EdgeInsets.only(bottom: 30.0),
        color: Colors.lightBlue,
        child: Platform.isIOS ? iOSPicker() : androidDropdown(),
     ),
   ],
 ),
```

## Static Modifier

- Static means that you don't have to create an instance of the class to use the methods or variables associated with the class.
- Static is a non-access modifier applicable only to a blocks, variables, methods and nested classes.
- Static Keyword in Java is used for memory management mainly.

```ruby
void main() {

 Square.workout(radius : 5.44);
  
}

class Square {
  
  static int numberOfSides = 4;
  
  static void workout({double radius}){
    double calculation = 2 * numberOfSides * radius;
    print(calculation);
  }
  
}
```

## Animations

- Animation is a method in which figures are manipulated to appear as moving images and text. 
- Adding Animations in Flutter app is quite simple.

__Prepackaged Flutter Animations__

- https://pub.dev/packages/flutter_sequence_animation
- https://pub.dev/packages/animated_text_kit

__Hero Animations__

- A Hero Animation in one sentence is simply an element of one screen moving to the next when the app goes to the next page.

__welcome_screen.dart__

```ruby
 Row(
   children: <Widget>[
     Hero(
      tag: 'logo',
      child: Container(
      child: Image.asset('images/logo.png'),
        height: 60.0,
      ),
     ),
     Text(
      'Flash Chat',
       style: TextStyle(
       fontSize: 45.0,
       fontWeight: FontWeight.w900,
        ),
      ),
   ],
),
```

__registration_screen.dart__

```ruby
Hero(
   tag: 'logo',
   child: Container(
     height: 200.0,
     child: Image.asset('images/logo.png'),
    ),
),
```

## Custom Animation

- It is setup and controlled in three components(i.e.)Ticker, AnimationController and Animation / Tween.
- __Ticker__ - It tells us Changes in value or colour(i.e.)  It triggers a new state so that we can render something different on screen.
- __Animation Controller__ - It is the animation controler class which is going to tell the animation to start, to stop, to go forwards, to loop back, how long to animate for,   all of these things are determined when we create an animation controller and set it's properties.
- __Animation Value__ - It is the thing that actually does the animation.
- The animation values will go from 0 to 1 and by using the value, we can able to change  things such as height, size, color and opacity of a component.
- Refer, https://api.flutter.dev/flutter/animation/Curves-class.html

__welcome.dart__

```ruby
class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation animation; //For curved animation
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this,
    );
    // Curved Animation
    animation = CurvedAnimation(
        parent: controller, curve: Curves.easeIn); // Curves.decelerate
    //controller.reverse(from: 1.0);
    controller.forward();
    animation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        controller.reverse(from: 1.0);
      } else if (status == AnimationStatus.dismissed) {
        controller.forward();
      }
    });
    controller.addListener(() {
      setState(() {});
    });
  }
  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                Hero(
                  tag: 'logo',
                  child: Container(
                    child: Image.asset('images/logo.png'),
                    height: animation.value * 100,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
```

## Mixins[Dart]

- In object-oriented programming languages, a Mixin is a class that contains methods for use by other classes without having to be the parent class of those other classes.
- In other words mixins are normal classes from which we can borrow methods(or variables) from without extending the class. 
- In dart we can do this by using the keyword with.

```ruby
void main() {

 Animal().move();
 Fish().move();
 Duck().fly();
  
}

class Animal {
  
  void move(){
    print('Dynamic Value');
  }
}

class Fish extends Animal{
  
 @override
  void move(){
    super.move();
    print('Swimming');
  }
}

class Bird extends Animal{
 
  @override
  void move(){
    super.move();
    print('Flying');
  }
}

mixin CanSwim {
  void swim(){
    print('Swim');
  }
}

mixin CanFly {
  void fly(){
    print('Swim');
  }
}

class Duck extends Animal with CanSwim, CanFly{
 
}
```




