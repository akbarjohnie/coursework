import 'package:coursework/common/widgets/widgets.dart';
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
        elevatedButtonTheme: const ElevatedButtonThemeData(
          style: ButtonStyle(
            padding: WidgetStatePropertyAll(P(horizontal: 8)),
            shape: WidgetStatePropertyAll(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(12)),
              ),
            ),
          ),
        ),
      ),
      home: const HomePage(),
    );
  }
}
