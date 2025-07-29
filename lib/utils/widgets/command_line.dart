import 'package:flutter/material.dart';

import '../../../../core/constants/design_constants.dart';

class CommandLine extends StatelessWidget {
  final String expression;
  const CommandLine({super.key, required this.expression});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200.0,
      child: Center(
        child: Text(
          expression,
          style: TextStyle(
            fontSize: 48.0,
            fontWeight: FontWeight.w400,
            color: DesignConstants.kCommandLineTextColor,
          ),
        ),
      ),
    );
  }
}
