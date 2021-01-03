class Animal {
  var name;
  var type;
  var age;

  Animal(name, type, age) {
    this.name = name;
    this.type = type;
    this.age = age;
  }

  void printInfo() {
    print('I have a ${type}. Its name is ${name} and of ${age} years old.');
  }
}
