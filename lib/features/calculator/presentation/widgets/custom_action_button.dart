import 'package:StartApp/core/constants/design_constants.dart';
import 'package:StartApp/features/calculator/presentation/controllers/expression_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class IconActionButton extends StatelessWidget {
  final ExpressionController expressionController = Get.find();

  final String symbol;
  final Color? color;
  IconActionButton({
    super.key,
    required this.symbol,
    this.color = DesignConstants.kOperatorsTextColor,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => expressionController.append(symbol),
      child: Text(
        symbol,
        style: TextStyle(
          fontSize: 32.0,
          fontWeight: FontWeight.w500,
          color: color,
        ),
      ),
    );
  }
}

class NumberActionButton extends StatelessWidget {
  final ExpressionController expressionController = Get.find();
  final String number;
  NumberActionButton({super.key, required this.number});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => expressionController.append(number),
      child: Text(
        number,
        style: TextStyle(
          fontSize: 32.0,
          fontWeight: FontWeight.w500,
          color: DesignConstants.kNumbersTextColor,
        ),
      ),
    );
  }
}
