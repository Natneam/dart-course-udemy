import 'dart:io';
import 'dart:convert';

void main(List<String> args) {
  tcpClient();
}

void tcpClient() async {
  var clientSocket = await Socket.connect('127.0.0.1', 3000);
  print('Connected');

  print('Enter data to send: ');
  var data = stdin.readLineSync();
  clientSocket.write(data);
  print('Data sent to the server!!');
  await clientSocket.close();
  exit(0);
}
