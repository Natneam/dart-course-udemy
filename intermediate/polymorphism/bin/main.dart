import 'package:polymorphism/animal.dart';
import 'package:polymorphism/Monster.dart';
import 'package:polymorphism/bnb.dart';

void main(List<String> arguments) {
  var cat1 = Cat();
  var dog1 = Dog();

  cat1.test();
  print(
      '=====================================================================');
  dog1.test();

  // let's test mixin
  var monster1 = Monster();
  monster1.test();

  //assignment
  var bnb = new BnB();
  print(bnb.rooms);
  bnb.ringDoorBell();
}
