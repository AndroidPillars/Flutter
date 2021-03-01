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
  
// for (int i = 0; i < 10; i+=2) {   
//  print(i);    
// };
}
```
