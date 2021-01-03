import 'dart:io';
import 'dart:collection';

// import 'dart:async';
// enum names { Natneam, Mesele, Assefa }
void main() {
  // accepting input in dart
  // stdout.write('What is your name? \r\n');
  // print('What is your name?');
  // var name = stdin.readLineSync();
  // print(name + ' abc');
  // print(names.Natneam);

  // List
  List things = new List(4);
  things[0] = 1;
  things[1] = 'two';
  things[2] = true;
  things[3] = [1, 2, 3, 4];
  // print(things);

  // Generic list
  List<int> numbers = new List<int>();
  numbers.add(1);
  numbers.add(10);
  numbers.add(21);
  numbers.add(34);
  // print(numbers);

  // Sets
  Set numberSet = new Set();
  numberSet.add(1);
  numberSet.add(2);
  numberSet.add(3);
  numberSet.add(4);
  numberSet.add(1);
  // print(numberSet);

  // generic sets
  Set<String> stringSet = new Set<String>();
  stringSet.add('Natneam');
  stringSet.add('Mesele');
  stringSet.add('Assefa');
  stringSet.add('Mekonen');
  // print(stringSet);

  // Queues
  Queue<int> items = new Queue<int>();
  items.add(1);
  items.add(2);
  items.add(3);
  items.add(4);
  items.add(5);
  // print(items);
  items.removeLast();
  // print(items);

  // Maps
  // Map<String, String> family = new Map<String, String>();
  // family['father'] = 'Mesele';
  // family['mother'] = 'Desta';
  // family['first son'] = 'Natneam';
  // family['last son'] = 'Amrudin';
  Map family = {
    'father': 'Mesele',
    'mother': 'Desta',
    'first son': 'Natneam',
    'last son': 'Amrudin'
  };
  // print(family);

  List people = ['Natneam', 'Mesele', 'Assefa', 'Mekonen'];
  print('Enter index(0 - 3) : ');
  var index = stdin.readLineSync();
  print(people[int.parse(index)]);
}
