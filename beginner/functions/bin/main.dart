import 'dart:io';

void main(List<String> arguments) {
  // download('d1.txt');
  // download2('d2.txt', true, 3.4);
  // download3('d3.txt', speedLimit: 30);
  // download4();
  // anonymousFunction();
  assignment();
}

// optional argument which is positional argument
void download(String fileName, [bool open = false, double speedLimit = null]) {
  print('Downloading ${fileName}');
  if (open) print('Opening ${fileName}');
  if (speedLimit != null) print('Download speed : ${speedLimit} Mb/s');
}

// not optional argument which is positional argument
void download2(String fileName, bool open, double speedLimit) {
  print('Downloading ${fileName}');
  print('Download speed : ${speedLimit} Mb/s');
  if (open) print('Opening ${fileName}');
}

// optional argument which is keyword word argument

void download3(String fileName,
    {bool open = false, double speedLimit = null, int port = 3000}) {
  print('Downloading ${fileName}');
  print('Port: ${port}');
  if (speedLimit != null) print('Download speed : ${speedLimit} Mb/s');
  if (open) print('Opening ${fileName} ....');
}

// not optional keyword argument
void download4({String fileName, int port}) {
  print("Downloading ${fileName}");
}

// anonymous function
void anonymousFunction() {
  var people = ['Natneam', 'Mesele', 'Desta', 'Amrudin'];
  var fun = (var person) {
    print(person);
  };
  people.forEach(fun);
  print('===================================');
  people.where((person) {
    switch (person) {
      case 'Natneam':
        return true;
        break;
      case 'Mesele':
        return false;
        break;
      case 'Desta':
        return true;
        break;
      case 'Amrudin':
        return true;
        break;
      default:
        return true;
    }
  });
}

// Ask the user for a maximum number, use a loop to print each number on the screen from 1 to the number they provided. At the half way point, print out "half way there". Spit these tasks into functions.

void assignment() {
  print('Enter a positive integer number you want : ');
  var num = int.parse(stdin.readLineSync());
  for (var i = 1; i <= 10; i++) {
    i != 5 ? print(i) : print('${i} half way there');
  }
}
