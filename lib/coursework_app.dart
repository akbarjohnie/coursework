import 'package:coursework/presentation/pages/home/home_page.dart';
import 'package:flutter/material.dart';

class CourseworkApp extends StatelessWidget {
  const CourseworkApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
