import 'package:coursework/presentation/pages/home/eac.dart' as eac;
import 'package:coursework/presentation/pages/home/message_decoding.dart' as eac;
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String generetedMessage = 'encryptencrypt';
  String encryptedMessage = '';
  String compressedAndEncryptedMessage = '';

  String decodedMessage = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Coursework'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 16,
        children: <Widget>[
          Column(
            children: [
              ElevatedButton(
                onPressed: () {},
                child: const Text('Сгенерировать'),
              ),
              Text('Text: $generetedMessage'),
            ],
          ),
          Column(
            children: [
              ElevatedButton(
                onPressed: () async {
                  final a = await eac.EncryptionAndCompressionMethods.encrypt(generetedMessage);
                  setState(() => encryptedMessage = a);
                },
                child: const Text('Зашифровать'),
              ),
              Text('Text: $encryptedMessage'),
            ],
          ),
          Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    compressedAndEncryptedMessage = eac.EncryptionAndCompressionMethods.compress(encryptedMessage);
                  });
                },
                child: const Text('Сжать'),
              ),
              Text('Text: $compressedAndEncryptedMessage'),
            ],
          ),
          Column(
            children: [
              ElevatedButton(
                onPressed: () async {
                  final a = await eac.MessageDecoding.decode(compressedAndEncryptedMessage);
                  setState(() => decodedMessage = a);
                },
                child: const Text('decode'),
              ),
              Text('Text: $decodedMessage'),
            ],
          ),
        ],
      ),
    );
  }
}
