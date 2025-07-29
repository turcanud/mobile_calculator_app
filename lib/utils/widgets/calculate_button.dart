import 'package:flutter/material.dart';

import '../../../../core/constants/design_constants.dart';

class CalculateButton extends StatelessWidget {
  final Function onPressed;
  const CalculateButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onPressed.call(),
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
