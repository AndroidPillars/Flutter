class Employee {
  Employee(this._id, this._name, this._salary);

  int _id;
  String _name;
  double _salary;

  // setters

  set id(int value) {
    _id = value;
  }

  set name(String value) {
    _name = value;
  }

  set salary(double value) {
    _salary = value;
  }

  // getters

  int get id => _id;
  String get name => _name;
  double get salary => _salary;
}
