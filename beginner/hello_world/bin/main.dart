void main(List<String> arguments) {
  var x = 10;
  var y = 'Natneam Mesele';
  var z = false;
  print('If we say ${y} is ${x} years old. It is ${z} statement!');
  // first name
  var firstName = y.substring(0, 7);
  print('First Name = ' + firstName);
  var index = y.indexOf(' ');
  var lastName = y.substring(index).trim();
  print('Last Name = ' + lastName);
  print(y.length);
  var l = y.split(' ');
  for (var i = 0; i < l.length; i++) {
    print(l[i].runtimeType);
  }
  const w = 10;
  print(w);
}
