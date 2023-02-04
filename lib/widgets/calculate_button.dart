import 'dart:math';

import 'package:bmi_application/widgets/geneder_selection_widget.dart';
import 'package:flutter/material.dart';

import '../bmi_result_screen.dart';

class CalculateButton extends StatelessWidget {
  const CalculateButton({
    super.key,
    required this.weight,
    required this.height,
    required this.age,
    required this.gender,
  });

  final int weight;

  final double height;

  final int age;

  final Gender gender;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      color: Color(0xffe5174d),
      child: MaterialButton(
        onPressed: () {
          var result = weight / pow(height / 100, 2);
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (contextt) => BmiResultScreen(
                age: age,
                result: result,
                gender: gender,
              ),
            ),
          );
        },
        child: const Text(
          'CALCULATE',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
