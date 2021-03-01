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
    value: 'INR',
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
