import 'package:flutter/material.dart';

import '../../../../core/constants/design_constants.dart';

class IconActionButton extends StatelessWidget {
  final Function onPressed;
  final String symbol;
  final Color? color;
  const IconActionButton({
    super.key,
    required this.symbol,
    this.color = DesignConstants.kOperatorsTextColor,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => onPressed.call(symbol),
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
  final Function onPressed;
  final String number;

  const NumberActionButton({
    super.key,
    required this.number,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => onPressed.call(number),
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
