import 'package:get/get.dart';
import 'package:math_expressions/math_expressions.dart';

import '../../core/constants/app_constants.dart';

class CalculatorController extends GetxController {
  final expression = RxString('');

  void append(String value) {
    if (expression.value == 'Error') {
      expression.value = '';
    }
    if (expression.value.isNotEmpty &&
        (AppConstants.kSupportedOperators.contains(value) &&
            AppConstants.kSupportedOperators.contains(
              expression.value[expression.value.length - 1],
            ))) {
      return;
    }
    if (value == '.' && expression.value.isEmpty) {
      expression.value = '0.';
      return;
    }
    if (expression.value.contains('.') && value == '.') return;
    expression.value += value;
  }

  void clear() {
    expression.value = '';
  }

  void deleteLast() {
    if (expression.value == 'Error') {
      expression.value = '';
    }
    if (expression.value.isNotEmpty) {
      expression.value = expression.value.substring(
        0,
        expression.value.length - 1,
      );
    }
  }

  void calculate(String expressionString) {
    if (expressionString.isEmpty) {
      return;
    }
    try {
      expressionString = expressionString
          .replaceAll('÷', '/')
          .replaceAll('×', '*');
      ExpressionParser p = GrammarParser();
      Expression exp = p.parse(expressionString);
      var context = ContextModel();
      var evaluator = RealEvaluator(context);
      num eval = evaluator.evaluate(exp);
      expression.value = eval % 1 == 0
          ? eval.toInt().toString()
          : eval.toString();
    } catch (e) {
      expression.value = 'Error';
    }
  }
}
