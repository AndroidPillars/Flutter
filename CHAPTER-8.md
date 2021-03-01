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

