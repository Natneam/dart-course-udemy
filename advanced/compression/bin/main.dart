import 'dart:io';
import 'dart:convert';
import 'package:archive/archive.dart';
import 'package:path/path.dart' as p;

void main(List<String> arguments) {
  // testGZIP();
  // testArchive();
  assignment('/home/natneam/Desktop/test/test.txt');
}

void testGZIP() {
  var data = '';
  for (var i = 0; i < 1000; i++) {
    data += 'Hello World\n';
  }
  // Encoding data
  List utfEncodedData = utf8.encode(data);
  List compressedData = gzip.encode(utfEncodedData);

  print('Data : ${data.length}');
  print('UTF8 Encoded Data : ${utfEncodedData.length}');
  print('Zipped Data : ${compressedData.length}');

  // Decoding Data
  List deCompressedData = gzip.decode(compressedData);
  var decodedData = utf8.decode(deCompressedData);
  print(decodedData);
}

void testArchive() {
  List<String> files = [];
  Directory.current.listSync().forEach((FileSystemEntity element) {
    if (element.statSync().type == FileSystemEntityType.file) {
      files.add(element.path);
    }
  });
  zip(files, '/home/natneam/Desktop/test.zip');
  unzip('/home/natneam/Desktop/test.zip', '/home/natneam/Desktop/test/');
}

void zip(List<String> files, String file) {
  var archive = Archive();
  files.forEach((String path) {
    var tempFile = File(path);
    var archiveFile = ArchiveFile(
        p.basename(path), tempFile.lengthSync(), tempFile.readAsBytesSync());
    archive.addFile(archiveFile);
  });
  var zipEncoder = ZipEncoder();
  var f = File(file);
  f.writeAsBytesSync(zipEncoder.encode(archive));
  print('Compressed');
}

void unzip(String file, String path) {
  var zipFile = File(file);
  Archive archive = ZipDecoder().decodeBytes(zipFile.readAsBytesSync());

  archive.forEach((ArchiveFile archiveFile) {
    File file = File(path + archiveFile.name);
    file.createSync(recursive: true);
    file.writeAsBytesSync(archiveFile.content);
  });
  print('Decompressed');
}

void assignment(String path) {
  // compress(path);
  decompress(path);
}

void compress(String path) {
  String data = '';
  File file = File(path);
  for (var i = 0; i < 1000; i++) {
    data += 'Hello World\nHello World\nHello World\nHello World\nHello World\n';
  }
  List<int> encodedData = utf8.encode(data);
  var zippedData = ZLibEncoder().encode(encodedData);
  file.writeAsBytesSync(zippedData);
  print('Compressed data written on file');
}

void decompress(String path) {
  File file = File(path);
  var unzippedData = ZLibDecoder().decodeBytes(file.readAsBytesSync());
  var data = utf8.decode(unzippedData);
  file.writeAsStringSync(data, mode: FileMode.write);
  print('File decompressed');
}
