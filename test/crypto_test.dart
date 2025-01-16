import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:test/test.dart';

void main() {
  test(
    'test crypto hashn',
    () {
      const password = '123456'; //8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92
      final encodedPassword = utf8.encode(password);
      final hash = sha256.convert(encodedPassword);
      print(hash);
    },
  );
}