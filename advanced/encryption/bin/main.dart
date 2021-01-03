import 'dart:io';
import 'dart:convert';
import 'dart:typed_data';
import 'package:pointycastle/pointycastle.dart';
import 'dart:math';
import 'package:collection/collection.dart';

void main(List<String> arguments) {
  // testDigest('helloWorld', 'SHA-256');
  // testDigest('helloWorld', 'SHA-1');
  // testDigest('helloWorld', 'MD5');
  // testDrivingKeys();
  // print(base64.encode(randomBytes(1)));
  // testStreamCiphers();
  // testBlockChain();
  assignment();
}

void testDigest(String password, String encryptionAlgorithm) {
  var digest = Digest(encryptionAlgorithm);
  var uint8ListValue = Uint8List.fromList(utf8.encode(password));
  var uint8List_hash = digest.process(uint8ListValue);
  var hashString = base64.encode(uint8List_hash);
  print(hashString);
}

void testDrivingKeys() {
  var password = 'Hello World';
  var salt = uint8ListFromString('password');
  var pkcs = KeyDerivator('SHA-1/HMAC/PBKDF2');
  var params = Pbkdf2Parameters(salt, 100, 16);
  pkcs.init(params);
  var key = pkcs.process(uint8ListFromString(password));
  display('Key Value', key);
}

Uint8List uint8ListFromString(String value) {
  return Uint8List.fromList(utf8.encode(value));
}

void display(String title, Uint8List value) {
  print('Title : ${title}');
  print('Value : ${value}');
  print('Hash_Value : ${base64.encode(value)}');
}

Uint8List randomBytes(int length) {
  final rnd = SecureRandom('AES/CTR/AUTO-SEED-PRNG');
  final key = new Uint8List(16);
  final keyParam = KeyParameter(key);
  final params = ParametersWithIV(keyParam, Uint8List(16));

  rnd.seed(params);
  var random = Random();
  for (var i = 0; i < random.nextInt(255); i++) {
    rnd.nextUint8();
  }
  var bytes = rnd.nextBytes(length);
  return bytes;
}

void testStreamCiphers() {
  final keybytes = randomBytes(16);
  final key = KeyParameter(keybytes);

  final iv = randomBytes(8);
  final params = ParametersWithIV(key, iv);

  StreamCipher streamCipher = StreamCipher('Salsa20');
  streamCipher.init(true, params);

  //Encrypt
  String planeText = 'Hello wolrd';
  Uint8List planeData = uint8ListFromString(planeText);
  Uint8List encryptedData = streamCipher.process(planeData);

  // Decrypt
  streamCipher.reset();
  streamCipher.init(false, params);
  Uint8List decryptedData = streamCipher.process(encryptedData);

  display('Plane Data', planeData);
  display('Encrypted Data', encryptedData);
  display('decrypted Data', decryptedData);
  print(utf8.decode(decryptedData));
}

void testBlockChain() {
  final key = randomBytes(16);
  final params = KeyParameter(key);

  BlockCipher blockCipher = BlockCipher('AES');
  blockCipher.init(true, params);

  //Encrypt
  String planeText = 'Hello world';
  Uint8List plane_data =
      uint8ListFromString(planeText.padRight(blockCipher.blockSize));
  Uint8List encrypted = blockCipher.process(plane_data);

  //Decrypt
  blockCipher.reset();
  blockCipher.init(false, params);
  var decrypted = blockCipher.process(encrypted);

  display('Plane Data', plane_data);
  display('Encrypted Data', encrypted);
  display('Decrypted Data', decrypted);

  print(utf8.decode(decrypted).trim());

  assert(ListEquality().equals(plane_data, decrypted));
}

void assignment() {
  String value = 'Hello';
  // encrypting string using Salasa20
  final key = randomBytes(16);
  final keyParam = KeyParameter(key);

  final iv = randomBytes(8);
  final params = ParametersWithIV(keyParam, iv);
  StreamCipher streamCipher = StreamCipher('Salsa20');
  streamCipher.init(true, params);

  var planeData = uint8ListFromString(value);

  // encrypting data
  var encryptedData = streamCipher.process(planeData);

  // decrypting data
  streamCipher.reset();
  streamCipher.init(false, params);
  var decryptedData = streamCipher.process(encryptedData);

  Digest digest = Digest('SHA-256');
  assert(base64.encode(digest.process(planeData)) ==
      base64.encode(digest.process(decryptedData)));
  print('Encrypted Data Hash : ${digest.process(planeData)}');
  print('Decrypted Data Hash : ${digest.process(decryptedData)}');
}
