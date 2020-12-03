# Functions[Dart]

- A function is a block of organized, reusable code that is used to perform a single, related action.
- Creating the Function

```ruby
void functionName(){
//To Do Something
}
```

- Calling the Function

```ruby
functionName();
```
- Named Function

```ruby
void functionName(){
//To Do Something
}
```

- Anonymous Function

```ruby
(){
//To Do Something
}
```

- Example in Dart using Anonymous Function,

```ruby
onPressed: (){
//To Do Something
}
```

# Variables[Dart]

- Variable is “a named space in the memory” that stores values. In other words, it acts a container for values in a program.

```ruby
var myName = 'Android';
```
__where,__ 
Var is Keyword that says, I am creating a Variable.    
myName is a reference name of the Variable.    
'Android' is the name assigned to that Variable.

# Data Types

- Dart -> Statically Typed Language.
```ruby
void main() {
  var a = 'HelloWorld';
  a = 123;
  print(a);
}
```
- In the the above example, var a is having different data types but not able to change in Dart. 
- Dart also having a data type called dynamic.
```ruby
void main() {
  var a;
  a = 'HelloWorld';
  a = 123;
  print(a);
}
```
- Also we can done by using 'dynamic' keyword as below,
```ruby
void main() {
  dynamic a;
  a = 'HelloWorld';
  a = 123;
  print(a);
}
```
- String, int, double , bool -> all of this data types together known as primitive data types.
```ruby
void main() {
  String = 'HelloWorld';
  int b = 123; 
}
```
- JavaScript is dynamically Typed Language.
```ruby
var a = 'HelloWorld';
a = 123;
console.log(a);
```
- In the the above example, var a is having different data types but being able to change in JavaScript. 
- It is recommended to use sring, int, decimal instead of using var, dynamic to avoid the datatype errors.

# Stateful vs Stateless Widget

__Stateless Widget:__

- A widget that has an immutable state.
- Stateless Widgets are static widgets.
- They do not depend on any data change or any behavior change.
- Stateless Widgets do not have a state, they will be rendered once and will not update themselves, but will only be updated when external data changes.
- For Example: Text, Icon, RaisedButton are Stateless Widgets.

__Stateless Widget:__

- A widget that has a mutable state.
- Stateful Widgets are dynamic widgets.
- They can be updated during runtime based on user action or data change.
- Stateful Widgets have an internal state and can re-render if the input data changes or if the Widget’s state changes.
- For Example: Checkbox, Radio Button, Slider are Stateful Widgets.

```ruby
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<StatefulWidget> {
  var mDiceFive = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: FlatButton(
              onPressed: () {
                setState(() {
                  mDiceFive = 5;
                });
              },
              child: Image(
                image: AssetImage('images/dice$mDiceFive.png'),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: FlatButton(
              onPressed: () {},
              child: Image.asset('images/dice2.png'),
            ),
          )
        ],
      ),
    );
  }
}
```
