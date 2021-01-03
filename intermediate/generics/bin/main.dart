import 'package:generics/cashier.dart';
import 'package:generics/employee.dart';
import 'package:generics/generics.dart';
import 'package:generics/manager.dart';
import 'package:generics/payroll.dart';

void main(List<String> arguments) {
  // add<int>(1, 2);
  // add<String>('a', 'b');
  // List<int> l = [1, 2, 3, 4, 5, 6, 7, 8];
  // print(con(10, l));

  Payroll<Employee> e = new Payroll();
  e.add(new Manager('Natneam'));
  e.add(new Employee('Bekele'));
  e.add(new Cashier('Yirga'));
  e.print();
}

void add<T extends num>(T a, T b) {
  print(a + b);
}

T con<T extends num>(T value, List<int> l) {
  l.forEach((element) {
    value += element;
  });
  return value;
}
