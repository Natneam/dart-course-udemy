import 'package:scopes/animal.dart';

void main(List<String> arguments) {
  var animals = [
    ['chRis', 'doG', 5],
    ['Max', 'fish', 7],
    ['bob', 'bird', 4],
    ['wro', 'cat', 9],
    ['mechal', 'doG', 14],
    ['yirga', 'Goat', 7],
    ['buchea', 'doG', 2],
    ['kit', 'cat', 1]
  ];
  for (var i = 0; i < animals.length; i++) {
    var animal = Animal(animals[i][0], animals[i][1], animals[i][2]);
    animal.echoInfo();
    print(Animal.counter);
  }
}
