import 'package:StartApp/core/constants/design_constants.dart';
import 'package:StartApp/features/calculator/presentation/widgets/custom_action_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/expression_controller.dart';

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
          color: Color(0xffFF887D),
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
        NumberActionButton(number: "7"),
        NumberActionButton(number: "8"),
        NumberActionButton(number: "9"),
        IconActionButton(symbol: "×"),
        NumberActionButton(number: "4"),
        NumberActionButton(number: "5"),
        NumberActionButton(number: "6"),
        IconActionButton(symbol: "-"),
        NumberActionButton(number: "1"),
        NumberActionButton(number: "2"),
        NumberActionButton(number: "3"),
        IconActionButton(symbol: "+"),
        const SizedBox.shrink(),
        NumberActionButton(number: "0"),
        NumberActionButton(number: "."),
        GestureDetector(
          onTap: () => expressionController.calculate(
            expressionController.expression.value,
          ),
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
        ),
      ],
    );
  }
}
