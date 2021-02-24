
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

## Refactoring Flutter Widgets

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
