import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/constants/design_constants.dart';
import '../../utils/widgets/buttons_grid.dart';
import '../../utils/widgets/command_line.dart';
import '../../utils/widgets/title_header.dart';
import 'calculator_controller.dart';

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({super.key});

  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  CalculatorController get controller => Get.find();

  @override
  void initState() {
    super.initState();
    Get.put(CalculatorController());
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TitleHeader(title: "Calculator"),
        Obx(() => CommandLine(expression: controller.expression.value)),
        const Divider(color: DesignConstants.kDividerColor),
        ButtonsGrid(expressionController: controller),
      ],
    );
  }
}
