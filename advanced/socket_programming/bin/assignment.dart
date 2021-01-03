import 'dart:io';
import 'package:http/http.dart' as http;
import 'dart:convert';

main(List<String> args) async {
  var url = 'http://gen.lib.rus.ec/';
  var response = await http.get(url);
  print('Response Status: ${response.statusCode}');
  print('Body Length: ${response.body.length}');
}
