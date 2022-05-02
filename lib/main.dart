import 'package:flutter/material.dart';

import 'InputPage.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        appBarTheme: const AppBarTheme(color: Color(0xFF181824)),
        scaffoldBackgroundColor: const Color(0xFF181824),
      ),
      debugShowCheckedModeBanner: false,
      home: InputPage(),
    );
  }
}
