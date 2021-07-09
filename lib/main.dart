import 'dart:ui';
import 'package:flutter/material.dart';
import 'screen/inputpage.dart';

void main() {
  runApp(BmiCalculator());
}

class BmiCalculator extends StatefulWidget {
  @override
  _BmiCalculatorState createState() => _BmiCalculatorState();
}

class _BmiCalculatorState extends State<BmiCalculator> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
            primaryColor: Color(0xff0A0D22),
            scaffoldBackgroundColor: Color(0xff0A0D22),
      ),
      home: InputPage()
      );
  }
}

