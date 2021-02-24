
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
      // theme: ThemeData.dark() // Setting custom Theme
      theme: ThemeData(
        primaryColor: Color(0xFF0A0E21), // Actionbar color
        accentColor: Colors.purple, // Floating Button color
      ),
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
