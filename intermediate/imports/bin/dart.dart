// import 'dart:html';

import 'package:imports/imports.dart' as mycode;
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:path/path.dart' as path;

void main(List<String> arguments) {
  var message = mycode.sayHello();
  // print(message);

  //encoding using  utf8
  // var encoded = utf8.encode('Hello World');
  // var decoded = utf8.decode([10, 34, 72, 76, 123]);

  //encoding of json
//   var encoded = json.encode([
//     {'a': 23, 'b3': 45}
//   ]);
//   var decoded = json.decode(encoded.toString());
//   print(decoded);

  // var url = 'https://natneam.github.io/Personal-Website/index.html';
  // http.get(url).then((response) {
  //   var statusCode = response.statusCode;
  //   var header = response.headers;
  //   var body = response.body;
  //   print('Status Code: ${statusCode}');
  //   print('Header: ${header}');
  //   print('Body: ${body}');
  // });

  var fullPath = path.join('/document/Courses/dart/beginner/bin', 'main.dart');
  print(fullPath);
}
