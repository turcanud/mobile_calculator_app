import 'package:flutter/material.dart';

import 'features/calculator/presentation/pages/calculator_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 16.0),
          child: CalculatorPage(),
        ),
      ),
    );
  }
}
