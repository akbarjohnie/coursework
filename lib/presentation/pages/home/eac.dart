import 'dart:convert';
import 'package:cryptography/cryptography.dart';
import 'package:es_compression/brotli.dart';

class EncryptionAndCompressionMethods {
  static final algorithm = Chacha20.poly1305Aead();

  /// Фиксированный ключ для демонстрации 
  /// (32 байта, не безопасно для продакшена)
  static final secretKey = SecretKey(List<int>.filled(32, 0));

  static Future<String> encrypt(String message) async {
    final messageBytes = utf8.encode(message);

    // Генерация случайного nonce (12 байт)
    final nonce = algorithm.newNonce();

    final secretBox = await algorithm.encrypt(
      messageBytes,
      secretKey: secretKey,
      nonce: nonce,
    );

    final encryptedBytes = secretBox.bytes;
    final encryptedString = base64.encode(encryptedBytes);

    return encryptedString;
  }

  static String compress(String encryptedMessage) {
    final encryptedBytes = base64.decode(encryptedMessage);

    final brotli = BrotliEncoder();
    final compressedBytes = brotli.convert(encryptedBytes);

    final compressedString = base64.encode(compressedBytes);

    return compressedString;
  }
}

extension SecretBoxBytes on SecretBox {
  List<int> get bytes => [...nonce, ...cipherText, ...mac.bytes];
}
