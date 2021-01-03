import 'package:http/http.dart' as http;
import 'dart:async';

void main(List<String> args) {
  testPost('https://httpbin.org/post');
}

void testGet(String url) async {
  var response = await http.get(url);
  print('Response Status : ${response.statusCode}');
  print('Body : ${response.body}');
}

void testPost(String url) async {
  var response = await http.post(url, body: 'name=Bryan&color=blue');
  print('Status code : ${response.statusCode}');
  print('Body : ${response.body}');
}
