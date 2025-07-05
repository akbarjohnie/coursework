import 'dart:convert';
import 'package:cryptography/cryptography.dart';
import 'package:es_compression/brotli.dart';

class MessageDecoding {
  static final algorithm = Chacha20.poly1305Aead();

  // Тот же ключ, что использовался для шифрования
  static final secretKey = SecretKey(List<int>.filled(32, 0));

  static Future<String> decode(String message) async {
    final compressedBytes = base64.decode(message);

    final brotli = BrotliDecoder();
    final encryptedBytes = brotli.convert(compressedBytes);

    const nonceLength = 12;
    const macLength = 16;
    final totalLength = encryptedBytes.length;

    final nonce = encryptedBytes.sublist(0, nonceLength);
    final macBytes = encryptedBytes.sublist(totalLength - macLength);
    final cipherText = encryptedBytes.sublist(nonceLength, totalLength - macLength);

    final secretBox = SecretBox(cipherText, nonce: nonce, mac: Mac(macBytes));

    final decryptedBytes = await algorithm.decrypt(
      secretBox,
      secretKey: secretKey,
    );

    final decryptedMessage = utf8.decode(decryptedBytes);

    return decryptedMessage;
  }
}
