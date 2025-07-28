import 'package:get/get.dart';

class ExpressionController extends GetxController {
  var expression = ''.obs;

  void append(String value) {
    expression.value += value;
  }

  void clear() {
    expression.value = '';
  }

  void deleteLast() {
    if (expression.value.isNotEmpty) {
      expression.value = expression.value.substring(
        0,
        expression.value.length - 1,
      );
    }
  }

  void setExpression(String value) {
    expression.value = value;
  }
}
