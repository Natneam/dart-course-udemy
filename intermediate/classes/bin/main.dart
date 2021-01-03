import 'package:classes/classes.dart' as animalPackage;
import 'package:classes/employee.dart' as employeePackage;

void main(List<String> arguments) {
  var myDog = animalPackage.Animal('Max', 'Dog', 5);
  // myDog.printInfo();
  var employee1 = employeePackage.Employee('Tenadam', 'Manager');
  var employee2 = employeePackage.Employee('Fikru', 'Cashier');
  employee1.printInfo();
  employee2.printInfo();
}
