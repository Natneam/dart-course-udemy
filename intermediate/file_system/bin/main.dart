import 'dart:io';

void main(List<String> arguments) {
  var dir = Directory.current;
  var myFile = File(dir.path + '/test.txt');
  myFile.writeAsStringSync('Hello Natneam you just write on the file.');
  print(myFile.readAsStringSync());
  myFile.deleteSync();
}
