import 'package:flutter/material.dart';
import 'package:jp_app/src/features/start_screen/start_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SnackScreen(),
    );
  }
}
