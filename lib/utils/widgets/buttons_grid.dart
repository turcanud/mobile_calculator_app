import 'package:StartApp/pages/calculator/calculator_controller.dart';
import 'package:flutter/material.dart';

import '../../../../core/constants/design_constants.dart';
import 'calculate_button.dart';
import 'custom_action_button.dart';

class ButtonsGrid extends StatelessWidget {
  final Function onAppend;
  const ButtonsGrid({super.key, required this.onAppend});

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
        IconActionButton(
          symbol: "C",
          color: DesignConstants.kClearButtonColor,
          onPressed: (symbol) => expressionController.clear(),
        ),
        const SizedBox.shrink(),
        IconButton(
          onPressed: () => expressionController.deleteLast(),
          icon: Icon(
            Icons.backspace_outlined,
            color: DesignConstants.kOperatorsTextColor,
          ),
        ),
        IconActionButton(symbol: "÷", onPressed: (symbol) => append(symbol)),
        ...["7", "8", "9"].map(
          (number) => NumberActionButton(
            number: number,
            onPressed: (number) => append(number),
          ),
        ),
        IconActionButton(symbol: "×", onPressed: (symbol) => append(symbol)),
        ...["4", "5", "6"].map(
          (number) => NumberActionButton(
            number: number,
            onPressed: (number) => append(number),
          ),
        ),
        IconActionButton(symbol: "-", onPressed: (symbol) => append(symbol)),
        ...["1", "2", "3"].map(
          (number) => NumberActionButton(
            number: number,
            onPressed: (number) => append(number),
          ),
        ),
        IconActionButton(symbol: "+", onPressed: (symbol) => append(symbol)),
        const SizedBox.shrink(),
        ...["0", "."].map(
          (number) => NumberActionButton(
            number: number,
            onPressed: (number) => append(number),
          ),
        ),
        CalculateButton(onPressed: () => calculate()),
      ],
    );
  }

  void append(element) {
    expressionController.append(element);
  }

  void calculate() {
    onAppend.call();
    expressionController.calculate(expressionController.expression.value);
  }
}
