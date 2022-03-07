import 'package:calculadora_getx/controllers/calculator_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'main_result.dart';
import 'sub_result.dart';
import 'line_separator.dart';

class MathResults extends StatelessWidget {
  MathResults({Key? key}) : super(key: key);


  final calculatorController = Get.find<CalculatorController>();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Column(
        children: [
          SubResult(text: '${ calculatorController.firstNumber}'),
          SubResult(text: '${ calculatorController.operation}'),
          SubResult(text: '${ calculatorController.secondNumber}'),
          LineSeparator(),
          MainResultText(text: '${ calculatorController.mathResult}'),
        ],
      ),
    );
  }
}
