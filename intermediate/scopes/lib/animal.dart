class Animal {
  static int counter = 0;
  var _name;
  var _type;
  var _age;
  Animal(String name, String type, int age) {
    _name = name;
    _type = type;
    _age = age;
    counter += 1;
    _formatter();
  }

  void echoInfo() {
    print(
        'Hello everyone my name is ${_name}. I\'am a ${_type} and of ${_age} years old.');
  }

  void _formatter() {
    _name = _name.toUpperCase();
    _type = _type.toUpperCase();
  }

  String get name {
    return _name;
  }

  void set name(String value) {
    _name = value.toUpperCase();
  }
}
