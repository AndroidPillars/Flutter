# 4.0.Functions[Dart]

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

# 4.1.Variables[Dart]

- Variable is “a named space in the memory” that stores values. In other words, it acts a container for values in a program.

```ruby
Var myName = 'Android';
```
__where,__ 
Var is Keyword that says, I am creating a Variable.    
myName is a reference name of the Variable.    
'Android' is the name assigned to that Variable.

# 4.2.Data Types

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
- String, int, double , bool -> all of this data types together known as primitive data types.
- JavaScript is dynamically Typed Language.
```ruby
var a = 'HelloWorld';
a = 123;
console.log(a);
```
- In the the above example, var a is having different data types but being able to change in JavaScript. 
