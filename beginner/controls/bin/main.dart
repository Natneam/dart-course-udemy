void main(List<String> arguments) {
  // testAssert();
  // testSwitch();
  // testDoLoop();
  // testWhileLoop();
  // testBreakAndContinue();
  // testForLoops();
  assignmentOnControls();
}

void testAssert() {
  // assert statement
  var a = 12;
  print('Hello world');
  assert(a == 12);
  print('Fuck world');
}

void testSwitch() {
  // switch
  var age = 18;
  switch (age) {
    case 18:
      print('You are 18, you can vote!');
      break;
    case 21:
      print('You are adult you!');
      break;
    default:
      print('Nothing special about this age 😕');
  }
}

void testDoLoop() {
  var value = 0;
  do {
    value++;
    print(value);
  } while (value < 0);
}

void testWhileLoop() {
  var value = 0;
  while (value < 0) {
    value++;
    print(value);
  }
}

void testBreakAndContinue() {
  var i = 0;
  while (true) {
    i++;
    print(i);
    if (i == 3) {
      continue;
    }
    if (i == 7) {
      break;
    }
    print('You will not see this because it is continued' +
        'with the continue key word when i == 3');
  }
}

void testForLoops() {
  // for loop
  List<String> people = ['Natneam', 'Hamza', 'Chris', 'Muhammad', 'Khedija'];
  for (var i = 0; i < people.length; i++) {
    print('Person at ${i} is ${people[i]}');
  }

  // fro each loop
  people.forEach((String person) {
    print(person);
  });
}

void assignmentOnControls() {
  for (var i = 0; i <= 10; i++) {
    i != 5 ? print(i) : print('${i}' + ' half way there');
  }
}
