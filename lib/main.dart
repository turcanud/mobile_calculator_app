import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'pages/calculator/calculator_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculator App',
      home: Scaffold(
        body: SafeArea(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 16.0),
            child: CalculatorPage(),
          ),
        ),
      ),
    );
  }
}
