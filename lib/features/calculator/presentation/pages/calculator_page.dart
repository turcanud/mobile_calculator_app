import 'package:StartApp/features/calculator/presentation/controllers/expression_controller.dart';
import 'package:StartApp/features/calculator/presentation/widgets/buttons_grid.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/constants/design_constants.dart';
import '../widgets/command_line.dart';
import '../widgets/title_header.dart';

class CalculatorPage extends StatelessWidget {
  const CalculatorPage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ExpressionController());

    final List<Widget> pageElements = [
      TitleHeader(title: 'Calculator'),
      CommandLine(),
      const Divider(color: DesignConstants.kDividerColor),
      ButtonsGrid(),
    ];

    return ListView.builder(
      itemCount: pageElements.length,
      itemBuilder: (context, index) {
        return pageElements[index];
      },
    );
  }
}
