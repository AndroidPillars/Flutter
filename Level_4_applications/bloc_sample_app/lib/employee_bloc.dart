//TODO: imports
import 'dart:async';

import 'package:bloc_sample_app/employee.dart';

//TODO: List of employees
class EmployeeBloc {
  List<Employee> _employeeList = [
    Employee(1, "EmployeeOne", 10000.0),
    Employee(2, "EmployeeTwo", 20000.0),
    Employee(3, "EmployeeThree", 30000.0),
    Employee(4, "EmployeeFour", 40000.0),
    Employee(5, "EmployeeFive", 50000.0)
  ];

//TODO: List of Stream controllers

// sink to add in pipe
// stream to get data out from pipe

  final _employeeListStreamController = StreamController<List<Employee>>();

// for increment and decrement

  final _employeeSalaryIncrementStreamController = StreamController<Employee>();

  final _employeeSalaryDecrementStreamController = StreamController<Employee>();

//TODO: Stream Sink getter

  Stream<List<Employee>> get employeeListStream =>
      _employeeListStreamController.stream;

  StreamSink<List<Employee>> get employeeListSink =>
      _employeeListStreamController.sink;

  StreamSink<Employee> get employeeSalaryIncrement =>
      _employeeSalaryIncrementStreamController.sink;

  StreamSink<Employee> get employeeSalaryDecrement =>
      _employeeSalaryDecrementStreamController.sink;

//TODO: Constructor - add data; Listen to changes

  EmployeeBloc() {
    _employeeListStreamController.add(_employeeList);

    _employeeSalaryIncrementStreamController.stream.listen(_incrementSalary);

    _employeeSalaryDecrementStreamController.stream.listen(_decrementSalary);
  }

//TODO: Core functions

  _incrementSalary(Employee employee) {
    double salary = employee.salary;

    double incrementedSalary = salary * 20 / 100;

    _employeeList[employee.id - 1].salary = salary + incrementedSalary;

    employeeListSink.add(_employeeList);
  }

  _decrementSalary(Employee employee) {
    double salary = employee.salary;

    double decrementedSalary = salary * 20 / 100;

    _employeeList[employee.id - 1].salary = salary - decrementedSalary;

    employeeListSink.add(_employeeList);
  }

//TODO: dispose

  void dispose() {
    _employeeListStreamController.close();
    _employeeSalaryIncrementStreamController.close();
    _employeeSalaryDecrementStreamController.close();
  }
}
