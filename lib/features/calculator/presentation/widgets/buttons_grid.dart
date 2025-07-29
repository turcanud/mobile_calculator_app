import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/constants/design_constants.dart';
import '../controllers/expression_controller.dart';
import 'calculate_button.dart';
import 'custom_action_button.dart';

class ButtonsGrid extends StatelessWidget {
  final ExpressionController expressionController = Get.find();
  ButtonsGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        childAspectRatio: 1.0,
        mainAxisSpacing: 10.0,
        crossAxisSpacing: 10.0,
      ),
      shrinkWrap: true,
      children: <Widget>[
        //Clear all button
        IconActionButton(
          symbol: "C",
          color: DesignConstants.kClearButtonColor,
          onPressed: () => expressionController.clear(),
        ),
        //Empty space for alignment
        const SizedBox.shrink(),
        //Backspace button
        IconButton(
          onPressed: () => expressionController.deleteLast(),
          icon: Icon(
            Icons.backspace_outlined,
            color: DesignConstants.kOperatorsTextColor,
          ),
        ),
        IconActionButton(symbol: "÷"),
        ...["7", "8", "9"].map((number) => NumberActionButton(number: number)),
        IconActionButton(symbol: "×"),
        ...["4", "5", "6"].map((number) => NumberActionButton(number: number)),
        IconActionButton(symbol: "-"),
        ...["1", "2", "3"].map((number) => NumberActionButton(number: number)),
        IconActionButton(symbol: "+"),
        const SizedBox.shrink(),
        ...["0", "."].map((number) => NumberActionButton(number: number)),
        CalculateButton(),
      ],
    );
  }
}
