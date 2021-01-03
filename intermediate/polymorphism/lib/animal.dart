class Animal {
  bool isAlive = true;
  var legNumber = 4;
  var breath = () {
    print('Breath');
  };
}

class Mammal extends Animal {
  bool haveBackbone = true;
  void giveMilk() {
    print('You are milking!');
  }

  void test() {
    print('Testing in Animal class!!');
  }
}

class Cat extends Mammal {
  void saySomething() {
    print('Meow');
  }

  @override
  void test() {
    print('Testing in Cat class');
    super.test();
  }
}

class Dog extends Mammal {
  void saySomething() {
    print('Meow');
  }

  @override
  void test() {
    print('Testing in Dog class');
    super.test();
  }
}
