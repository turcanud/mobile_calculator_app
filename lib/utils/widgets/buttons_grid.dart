import 'package:flutter/material.dart';

import '../../../../core/constants/design_constants.dart';
import 'calculate_button.dart';
import 'custom_action_button.dart';

class ButtonsGrid extends StatelessWidget {
  final Function(String) onAppend;
  final Function onClear;
  final Function onDeleteLast;
  final Function onCalculate;

  const ButtonsGrid({
    super.key,
    required this.onAppend,
    required this.onClear,
    required this.onDeleteLast,
    required this.onCalculate,
  });

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
          onPressed: (symbol) => onClear(),
        ),
        const SizedBox.shrink(),
        IconButton(
          onPressed: () => onDeleteLast(),
          icon: Icon(
            Icons.backspace_outlined,
            color: DesignConstants.kOperatorsTextColor,
          ),
        ),
        IconActionButton(symbol: "÷", onPressed: (symbol) => onAppend(symbol)),
        ...["7", "8", "9"].map(
          (number) => NumberActionButton(
            number: number,
            onPressed: (number) => onAppend(number),
          ),
        ),
        IconActionButton(symbol: "×", onPressed: (symbol) => onAppend(symbol)),
        ...["4", "5", "6"].map(
          (number) => NumberActionButton(
            number: number,
            onPressed: (number) => onAppend(number),
          ),
        ),
        IconActionButton(symbol: "-", onPressed: (symbol) => onAppend(symbol)),
        ...["1", "2", "3"].map(
          (number) => NumberActionButton(
            number: number,
            onPressed: (number) => onAppend(number),
          ),
        ),
        IconActionButton(symbol: "+", onPressed: (symbol) => onAppend(symbol)),
        const SizedBox.shrink(),
        ...["0", "."].map(
          (number) => NumberActionButton(
            number: number,
            onPressed: (number) => onAppend(number),
          ),
        ),
        CalculateButton(onPressed: () => onCalculate()),
      ],
    );
  }
}
