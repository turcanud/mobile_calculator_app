import 'package:StartApp/core/constants/app_constants.dart';
import 'package:flutter/material.dart';

import '../../../../core/constants/design_constants.dart';

class CommandLine extends StatelessWidget {
  final String expression;
  final String result;
  const CommandLine({
    super.key,
    required this.expression,
    required this.result,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            reverse: true,
            child: Text(
              expression,
              style: TextStyle(
                fontSize:
                    expression.length > AppConstants.kMaxFontSizeDefaultLength
                    ? 33.0
                    : 48.0,
                fontWeight: FontWeight.w400,
                color: DesignConstants.kCommandLineTextColor,
              ),
            ),
          ),
          const SizedBox(height: 10.0),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            reverse: true,
            child: Text(
              result,
              style: TextStyle(
                fontSize: result.length > AppConstants.kMaxFontSizeDefaultLength
                    ? 33.0
                    : 48.0,
                fontWeight: FontWeight.w400,
                color: DesignConstants.kCommandLineTextColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
