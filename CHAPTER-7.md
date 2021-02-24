
## Futter Themes

- We mainly use themes for sharing the colors and fonts styles throughout the app.
- Flutter uses the default theme while creating an application.
- If we want to share a custom theme to the entire application, we need to use a ThemeData under the MateialApp() widget.

__Read the Documentation in__

- https://flutter.dev/docs/cookbook/design/themes

__main.dart__

```ruby
import 'package:flutter/material.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // TODO Setting Default Theme
      // theme: ThemeData.dark()
      // TODO copyWith automatically selects accent and textTheme according to the dark theme
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21), // Actionbar color
        scaffoldBackgroundColor: Color(0xFF0A0E21), //body color
      ),
      // TODO alternative way for setting Theme Data
      // ThemeData(
      //     primaryColor: Color(0xFF0A0E21), // Actionbar color
      //     scaffoldBackgroundColor: Color(0xFF0A0E21), //body color
      //     accentColor: Colors.purple,
      //     textTheme: TextTheme(
      //       bodyText1: TextStyle(color: Color(0xFF0A0E21)),
      //     ) // Floating Button color
      // ),
      home: InputPage(),
    );
  }
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Center(
        child: Text('Body Text'),
      ),
      floatingActionButton: Theme(
        // data: ThemeData.light(), //alternative way for setting theme
        data: ThemeData(accentColor: Colors.purple),
        // Setting custom Theme for Floating Button
        child: FloatingActionButton(
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
```

## Creating Reusable Flutter Widgets

- It’s always good practice to use Reusable Widgets to maintain consistency throughout the app.
- When we are dealing with multiple projects, we don’t like to write to each code multiple times.
- It will create duplication and in the end, if any issue comes we end up with a mess.
- So, the best way is to create a base widget and use it everywhere.

__main.dart__

```ruby
import 'package:flutter/material.dart';
import 'input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21), // Actionbar color
        scaffoldBackgroundColor: Color(0xFF0A0E21), //body color
      ),
      home: InputPage(),
    );
  }
}
```

__input_page.dart__

```ruby
import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(
                      colour: Color(0xFF1D1E33),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      colour: Color(0xFF1D1E33),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReusableCard(
                colour: Color(0xFF1D1E33),
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(
                      colour: Color(0xFF1D1E33),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      colour: Color(0xFF1D1E33),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.colour});

  final Color colour;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
          color: colour, borderRadius: BorderRadius.circular(10.0)),
    );
  }
}
```

## Final vs Const

- If you never intend to change a variable then we have to declare using the keyword final or const.
- The final variable can be set only once.
- The const variable is a compile-time constant.(Const variables are implicitly final.) 

__Example__

```ruby
void main() {
  const int myCount = 3;
  final  mDate = DateTime.now();
  
  print(myCount);
  print(mDate);
}
```

__input_page.dart__

```ruby
import 'package:flutter/material.dart';

const bottomContainerHeight = 80.0;
const activeCardColor = Color(0xFF1D1E33);
const bottomContainerColor = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(
                      colour: activeCardColor,
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      colour: activeCardColor,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReusableCard(
                colour: activeCardColor,
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(
                      colour: activeCardColor,
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      colour: activeCardColor,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: bottomContainerColor,
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: bottomContainerHeight,
            )
          ],
        ));
  }
}

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.colour});

  final Color colour;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
          color: colour, borderRadius: BorderRadius.circular(10.0)),
    );
  }
}

```
