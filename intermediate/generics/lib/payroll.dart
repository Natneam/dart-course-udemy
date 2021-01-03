import 'employee.dart';

class Payroll<T extends Employee> {
  List<T> employees = [];
  void add<T>(var value) => employees.add(value);

  void print() {
    employees.forEach((element) {
      element.sayHello();
    });
  }
}
