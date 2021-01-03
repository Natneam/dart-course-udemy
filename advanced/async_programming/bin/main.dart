import 'dart:io';
import 'dart:async';

var counter = 0;
void main() async {
  // print(getTime());
  // The callback function will be called after 10 sec
  // Timer(Duration(seconds: 10), () => print(getTime()));

  //The call Back function will be called repeatedly until the .cancel called
  // Timer.periodic(Duration(seconds: 3), timeout);

  // Fun with futures
  // funWithFutures();
  print('Starting');
  appendToFile();
  print(await readFromFile());

  print('Ending');
}

void timeout(Timer t) {
  print(getTime());
  counter++;
  if (counter == 10) {
    t.cancel();
  }
}

getTime() {
  return DateTime.now().toString();
}

void funWithFutures() {
  var path = Directory.current.path + '/test.txt';
  File file = File(path);

  var f = file.open(mode: FileMode.append);
  f.then((value) {
    print('File opened successfully!!');
    value
        .writeString('Hello World')
        .then((value) => print('File appended successfully!!'))
        .catchError(() => print('Error Occurred'))
        .whenComplete(() => value.close());
  });
}

Future<File> appendToFile() {
  var file = File(Directory.current.path + '/test.txt');
  return file.writeAsString(DateTime.now().toString() + '\n',
      mode: FileMode.append);
}

Future<String> readFromFile() {
  var file = File(Directory.current.path + '/test.txt');
  return file.readAsString();
}
