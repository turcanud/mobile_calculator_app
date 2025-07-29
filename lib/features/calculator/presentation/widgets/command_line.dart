import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/constants/design_constants.dart';
import '../controllers/expression_controller.dart';

class CommandLine extends StatelessWidget {
  const CommandLine({super.key});

  @override
  Widget build(BuildContext context) {
    final ExpressionController expressionController = Get.find();
    return SizedBox(
      height: 200.0,
      child: Center(
        child: Obx(
          () => Text(
            expressionController.expression.value,
            style: TextStyle(
              fontSize: 48.0,
              fontWeight: FontWeight.w400,
              color: DesignConstants.kCommandLineTextColor,
            ),
          ),
        ),
      ),
    );
  }
}
