import 'dart:io';
import 'dart:convert';

void main(List<String> arguments) {
  // print('Os : ${Platform.operatingSystem} version:${Platform.version}');
  // if (Platform.isWindows) {
  //   print('Code running on Windows');
  // } else if (Platform.isMacOS) {
  //   print('COde running on MacOS');
  // } else if (Platform.isLinux) {
  //   print('Code running on Linux');
  // } else {
  //   print('Unknown System');
  // }

  // print('File Path : ${Platform.script.path}');
  // print('Dart path : ${Platform.executable}');

  // print('Envs');
  // Platform.environment.forEach((key, value) {
  //   print('${key}, ${value} ');
  // });

  // Process.run('pwd', []).then((value) {
  //   print(value.stdout);
  //   print(value.exitCode);
  // });

  // Process.start('cat', []).then((value) {
  //   value.stdout.transform(utf8.decoder).listen((event) {
  //     print(event);
  //   });
  //   value.stdin.writeln('Hello world');
  //   value.kill();
  //   value.exitCode.then((value) => print(value));
  // });
  print(Platform.environment['PATH']);
}
