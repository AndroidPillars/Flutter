# List[Dart]

- Dart represents arrays in the form of List objects. 
- List is simply an ordered group of objects.

__Example 1[Getting Name]__

```ruby
void main() {
  
  List<String> myList = [
    'List1',
    'List2',
    'List3',
    'List4'
  ];
  
  print(myList[0]);
    
}
```

__Example 2[Getting Index Value]__

```ruby
void main() {
  
  List<String> myList = [
    'List1',
    'List2',
    'List3',
    'List4'
  ];
  
  print(myList.indexOf('List1'));
    
}
```

# List[Flutter]

```ruby
import 'package:flutter/material.dart';

void main() => runApp(Quizzler());

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> mStoreKeeper = [
    Icon(
      Icons.check,
      color: Colors.green,
    ),
    Icon(
      Icons.close,
      color: Colors.red,
    ),
    Icon(
      Icons.close,
      color: Colors.red,
    ),
    Icon(
      Icons.close,
      color: Colors.red,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                'This is where the question text will go.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              textColor: Colors.white,
              color: Colors.green,
              child: Text(
                'True',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                setState(() {
                  mStoreKeeper.add(Icon(
                    Icons.check,
                    color: Colors.green,
                  ));
                });
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              color: Colors.red,
              child: Text(
                'False',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                 setState(() {
                  mStoreKeeper.add(Icon(
                    Icons.close,
                    color: Colors.red,
                  ));
                });
              },
            ),
          ),
        ),
        Row(
          children: mStoreKeeper,
        )
      ],
    );
  }
}
```

# Using If/Else

```ruby
import 'package:flutter/material.dart';

void main() => runApp(Quizzler());

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> mStoreKeeper = [];

  List<String> mQuestions = [
    'You can lead a cow down stairs but not up stairs.',
    'Approximately one quarter of human bones are in the feet.',
    'A slug\'s blood is green.'
  ];

  List<bool> mAnswers = [false, true, true];

  int mQuestionNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                mQuestions[mQuestionNumber],
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              textColor: Colors.white,
              color: Colors.green,
              child: Text(
                'True',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                bool mCorrectAnswer = mAnswers[mQuestionNumber];
                if (mCorrectAnswer == true) {
                  print('The Answer is Correct');
                } else {
                  print('The Answer is Wrong');
                }
                setState(() {
                  mQuestionNumber += 1;
                  mStoreKeeper.add(Icon(
                    Icons.check,
                    color: Colors.green,
                  ));
                });
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              color: Colors.red,
              child: Text(
                'False',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                bool mCorrectAnswer = mAnswers[mQuestionNumber];
                if (mCorrectAnswer == false) {
                  print('The Answer is Correct');
                } else {
                  print('The Answer is Wrong');
                }
                setState(() {
                  mQuestionNumber++;
                  mStoreKeeper.add(Icon(
                    Icons.check,
                    color: Colors.green,
                  ));
                });
              },
            ),
          ),
        ),
        Row(
          children: mStoreKeeper,
        )
      ],
    );
  }
}
```
__Question.dart__

```ruby
class Question {
  String mQuestionText;
  bool mAnswerValue;

  Question({String mQ, bool mA}) {
    mQuestionText = mQ;
    mAnswerValue = mA;
  }
}
```

# Classes and Objects

- A class is simply a blueprint and is used to create all of the things that we're going to be showing in our app and the user is going to be interacting with. 
- So essentially, everything that makes up our app is going to be created using a blueprint that's called a class.
- A class has two important things (i.e.) Properties and Methods.
- Example: If we take a car color and numberOfSeats is properties and drive(), break() is Methods.

__Creating the Class__

```ruby
class car {
  
  int numberOfDoors = 5;
  
  void drive(){
    print('wheels start turning');
  }
    
}
```

- where int numberOfDoors = 5 is the varaible(i.e.) Properties and void drive() is the function(i.e.) Methods

__Creating an Object from the Class__

```ruby
Car myCar = Car();
```
- where int Car = 5 is the type, myCar is the object and Car() is the new version of that class. 

__Example__

```ruby
void main(){
  
  Human mHuman = Human();
  
  print(mHuman.height);
  
  mHuman.height = 2.0;
  
  print(mHuman.height);
  
}

class Human{
  
  double height = 1.0;
  int age = 60;
}
```

__Using constructor__

```ruby
void main(){
  
  Human mHuman = Human(mHeight: 10.0);
  
  print(mHuman.height);
  
  mHuman.talk('Hello World');
 
}

class Human{
  
  double height;
  int age = 60;
  
  Human({double mHeight}){
    height = mHeight;
  }
  
  void talk(String mStringText){
    print(mStringText);
  }
}
```

# Abstraction

- OOps - Object Oriented Programming Language.
- It means we are working with objects -> Abstraction, Encapsulation, Inheritance and Polymorphism.
- Split up the functionality in to different Component.
- Its main goal is to handle complexity by hiding unnecessary details from the user. 

__main.dart__

```ruby
import 'package:flutter/material.dart';
import 'quiz_brain.dart';

QuizBrain mQuizBrain = QuizBrain();

void main() => runApp(Quizzler());

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                mQuizBrain
                    .mQuestionList[mQuizBrain.mQuestionNumber].mQuestionText,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              textColor: Colors.white,
              color: Colors.green,
              child: Text(
                'True',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                bool mCorrectAnswer = mQuizBrain
                    .mQuestionList[mQuizBrain.mQuestionNumber].mAnswerValue;
                if (mCorrectAnswer == true) {
                  print('The Answer is Correct');
                } else {
                  print('The Answer is Wrong');
                }
                setState(() {
                  mQuizBrain.mQuestionNumber += 1;
                  mQuizBrain.mStoreKeeper.add(Icon(
                    Icons.check,
                    color: Colors.green,
                  ));
                });
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              color: Colors.red,
              child: Text(
                'False',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                bool mCorrectAnswer = mQuizBrain
                    .mQuestionList[mQuizBrain.mQuestionNumber].mAnswerValue;
                if (mCorrectAnswer == false) {
                  print('The Answer is Correct');
                } else {
                  print('The Answer is Wrong');
                }
                setState(() {
                  mQuizBrain.mQuestionNumber++;
                  mQuizBrain.mStoreKeeper.add(Icon(
                    Icons.check,
                    color: Colors.green,
                  ));
                });
              },
            ),
          ),
        ),
        Row(
          children: mQuizBrain.mStoreKeeper,
        )
      ],
    );
  }
}
```

__quiz_brain.dart__

```ruby
import 'package:flutter/material.dart';
import 'Question.dart';

class QuizBrain {
  List<Icon> mStoreKeeper = [];
  List<Question> mQuestionList = [
    Question('Some cats are actually allergic to humans', true),
    Question('You can lead a cow down stairs but not up stairs.', false),
    Question('Approximately one quarter of human bones are in the feet.', true),
    Question('A slug\'s blood is green.', true),
    Question('Buzz Aldrin\'s mother\'s maiden name was \"Moon\".', true),
    Question('It is illegal to pee in the Ocean in Portugal.', true),
    Question(
        'No piece of square dry paper can be folded in half more than 7 times.',
        false),
    Question(
        'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
        true),
    Question(
        'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
        false),
    Question(
        'The total surface area of two human lungs is approximately 70 square metres.',
        true),
    Question('Google was originally called \"Backrub\".', true),
    Question(
        'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
        true),
    Question(
        'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
        true),
  ];
  int mQuestionNumber = 0;
}
```

__Question.dart__

```ruby
class Question {
  String mQuestionText;
  bool mAnswerValue;

  Question(String mQ, bool mA) {
    mQuestionText = mQ;
    mAnswerValue = mA;
  }
}
```

# Encapsulation

- It describes the idea of bundling data and methods that work on that data within one unit, e.g., a class in Java

__main.dart__

```ruby
import 'package:flutter/material.dart';
import 'quiz_brain.dart';

QuizBrain mQuizBrain = QuizBrain();

void main() => runApp(Quizzler());

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> mStoreKeeper = [];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                mQuizBrain.getQuestionText(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              textColor: Colors.white,
              color: Colors.green,
              child: Text(
                'True',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                bool mCorrectAnswer = mQuizBrain.getAnswerText();
                if (mCorrectAnswer == true) {
                  print('The Answer is Correct');
                } else {
                  print('The Answer is Wrong');
                }
                setState(() {
                  mQuizBrain.nextQuestion();
                  mStoreKeeper.add(Icon(
                    Icons.check,
                    color: Colors.green,
                  ));
                });
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              color: Colors.red,
              child: Text(
                'False',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                bool mCorrectAnswer = mQuizBrain.getAnswerText();
                if (mCorrectAnswer == false) {
                  print('The Answer is Correct');
                } else {
                  print('The Answer is Wrong');
                }
                setState(() {
                  mQuizBrain.nextQuestion();
                  mStoreKeeper.add(Icon(
                    Icons.check,
                    color: Colors.green,
                  ));
                });
              },
            ),
          ),
        ),
        Row(
          children: mStoreKeeper,
        )
      ],
    );
  }
}
```

__quiz_brain.dart__

```ruby
import 'package:flutter/material.dart';
import 'Question.dart';

class QuizBrain {
  int _mQuestionNumber = 0;
  List<Question> _mQuestionList = [
    Question('Some cats are actually allergic to humans', true),
    Question('You can lead a cow down stairs but not up stairs.', false),
    Question('Approximately one quarter of human bones are in the feet.', true),
    Question('A slug\'s blood is green.', true),
    Question('Buzz Aldrin\'s mother\'s maiden name was \"Moon\".', true),
    Question('It is illegal to pee in the Ocean in Portugal.', true),
    Question(
        'No piece of square dry paper can be folded in half more than 7 times.',
        false),
    Question(
        'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
        true),
    Question(
        'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
        false),
    Question(
        'The total surface area of two human lungs is approximately 70 square metres.',
        true),
    Question('Google was originally called \"Backrub\".', true),
    Question(
        'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
        true),
    Question(
        'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
        true),
  ];

  void nextQuestion() {
    if (_mQuestionNumber < _mQuestionList.length - 1) {
      _mQuestionNumber++;
    }
  }

  String getQuestionText() {
    return _mQuestionList[_mQuestionNumber].mQuestionText;
  }

  bool getAnswerText() {
    return _mQuestionList[_mQuestionNumber].mAnswerValue;
  }
}
```

__Question.dart__

```ruby
class Question {
  String mQuestionText;
  bool mAnswerValue;

  Question(String mQ, bool mA) {
    mQuestionText = mQ;
    mAnswerValue = mA;
  }
}
```

# Inheritance

- When the class is able to inherit the properties and methods from their parents.
- In other words, Inheritance is a mechanism in which one class acquires the property of another class.

```ruby
void main(){
  
  Monkey mMonkey = Monkey();
  
  print(mMonkey.height);
  
  mMonkey.talk('Hello World');
  
  mMonkey.monkeWeight();
 
}

class Human{
  
  double height = 10.0;
  int age = 60;
  
  void talk(String mStringText){
    print(mStringText);
  }
}

class Monkey extends Human{
  
  double weight = 150.0;
  
  void monkeWeight(){
     print('Weight$weight');
  }
  
  
}
```

# Polymorphism

- Polymorphism allows us to perform a single action in different ways. 

```ruby
void main(){
  
  ElectricCar myElectricCar = ElectricCar();
  myElectricCar.drive();
  myElectricCar.recharge();
  
  LevitatingCar myDrivingCar = LevitatingCar();
  myDrivingCar.drive();
  
  SelfDrivingCar mySelfDrivingCar = SelfDrivingCar('HangOver');
  mySelfDrivingCar.drive();
  
 
}

class Car{
  
  int  numberOfSeats = 5;
  
  void drive(){
    print('Wheel Turn.');
  }
}

class ElectricCar extends Car{
  
  int batteryLevel = 100;
  
  void recharge(){
     batteryLevel = 100;
  }
    
}

class LevitatingCar extends Car{
  
  @override
  void drive(){
    print('glide forwards');
  }
}

class SelfDrivingCar extends Car{
  
  String mDestination;
  
  SelfDrivingCar(String mUserDestination){
    mDestination = mUserDestination;
  }
  
  @override
  void drive(){
    super.drive();
    print('Sterring towards $mDestination');
  }
}
```

# Constructor

- The Constructor is the part of the code that actually turns this blueprint  in to actual object.

```ruby
void main(){
  
 Human mKite = Human(height: 15, weight: 30.5);
 print(mKite.height);
  
 Human mJenny = Human(height: 25, weight: 13.5);
 print(mJenny.height);
 
}

class Human{
  
  double height;
  double weight;
  
  Human({double height,double weight}){
  this.height = height;
  this.weight = weight;
  }
}
```

__Constructor[Dart]__

```ruby
void main(){
  
 Human mKite = Human(height: 15, weight: 30.5);
 print(mKite.height);
  
 Human mJenny = Human(height: 25, weight: 13.5);
 print(mJenny.height);
 
}

class Human{
  
  double height;
  double weight;
  
  Human({this.height,this.weight});
  
}
```

