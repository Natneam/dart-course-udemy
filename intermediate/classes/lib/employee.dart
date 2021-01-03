class Employee {
  var _name;
  var _position;
  Employee(String name, String position) {
    _name = name;
    _position = position;
  }

  void printInfo() {
    print('Emloyee Name : ${_name} \nEmloyee Position : ${_position}');
  }
}
