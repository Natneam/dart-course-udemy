import 'package:polymorphism/animal.dart';

class Ghost {
  bool canPassThoughWalls = true;
  void test() {
    print('test in ghost');
  }
}

class Dragon {
  bool breathsFire = true;
  void test() {
    print('test in dragon');
  }
}

class Monster extends Animal with Dragon, Ghost {
  bool isScary = true;
}
