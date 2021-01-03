import 'dart:io';

void main(List<String> arguments) {
  assignment();
}

void assignment() {
  try {
    raiseException();
  } catch (e) {
    print('Age Error Happened');
  }
}

void raiseException() {
  print('Enter your age : ');
  var age = int.parse(stdin.readLineSync());
  if (age < 18) {
    throw Exception('too young');
  } else if (age > 99) {
    throw Exception('too old');
  }
}
