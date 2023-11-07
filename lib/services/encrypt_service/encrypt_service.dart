import 'dart:typed_data';

import 'package:encrypt/encrypt.dart';

abstract class IEncryptService {
  String encrypt(String key, String text);

  String decrypt(String key, String text);
}

class EncryptService implements IEncryptService {
  @override
  String encrypt(String key, String text) {
    final encryptedKey = Key.fromUtf8(key);
    final iv = IV(Uint8List(16));
    final encrypter = Encrypter(AES(encryptedKey));
    final encrypted = encrypter.encrypt(text, iv: iv);
    return encrypted.base64;
  }

  @override
  String decrypt(String key, String text) {
    final encryptedKey = Key.fromUtf8(key);

    final iv = IV(Uint8List(16));
    final encrypter = Encrypter(AES(encryptedKey));
    final decrypted = encrypter.decrypt(Encrypted.fromBase64(text), iv: iv);
    return decrypted;
  }
}
