import 'dart:io';
import 'dart:convert';

void main(List<String> args) {
  udpServer();
}

void udpServer() async {
  await RawDatagramSocket.bind(InternetAddress.loopbackIPv4, 3000)
      .then((RawDatagramSocket udpSocket) {
    udpSocket.listen((RawSocketEvent event) {
      if (event == RawSocketEvent.read) {
        Datagram dg = udpSocket.receive();
        print(utf8.decode(dg.data));
      }
    });
    udpSocket.send(
        utf8.encode('helloWorld'), InternetAddress.loopbackIPv4, 3000);
    print('Sent!');
  });
  print('Server Running!!');
}
