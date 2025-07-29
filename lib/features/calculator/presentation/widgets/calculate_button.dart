import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/constants/design_constants.dart';
import '../controllers/expression_controller.dart';

class CalculateButton extends StatelessWidget {
  final ExpressionController expressionController = Get.find();

  CalculateButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () =>
          expressionController.calculate(expressionController.expression.value),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color: DesignConstants.kOperatorsTextColor,
        ),
        child: Center(
          child: Text(
            "=",
            style: TextStyle(
              fontSize: 32.0,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
