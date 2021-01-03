import 'dart:io';
import 'dart:convert';

void main() {
  tcpServer();
}

void tcpServer() async {
  var serverSocket = await ServerSocket.bind('127.0.0.1', 3000);
  print('Listening');

  await for (var socket in serverSocket) {
    socket.listen((values) {
      print(
          'Host: ${socket.remoteAddress} Port: ${socket.remotePort} Data : ${utf8.decode(values)}');
    });
  }
}
