## Material Dropdown Button Widget

- Refer, https://flutter.dev/docs/development/ui/widgets/material

__PriceScreen.dart__

```ruby
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

- CupertinoApp is used to build iOS like app and MaterialApp is used to build Android (Material) like app.

__PriceScreen.dart__

```ruby
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

