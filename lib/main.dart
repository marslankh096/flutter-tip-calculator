import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const TipCalculatorApp());
}

class TipCalculatorApp extends StatelessWidget {
  const TipCalculatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tip Calculator',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
