import 'dart:math';

import 'package:bmi_application/widgets/age_widget.dart';
import 'package:bmi_application/widgets/calculate_button.dart';
import 'package:bmi_application/widgets/geneder_selection_widget.dart';
import 'package:bmi_application/widgets/height_widget.dart';
import 'package:bmi_application/widgets/weight_widget.dart';
import 'package:flutter/material.dart';

class BmiScreen extends StatefulWidget {
  const BmiScreen({super.key});

  @override
  State<BmiScreen> createState() => /*  */ _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
  
  Gender gender = Gender.none;
  
  double height = 180;
  
  int weight = 60;
  
  int age = 28;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff111324),
      appBar: AppBar(
        backgroundColor: const Color(0xff111324),
        title: const Center(
          child: Text(
            'BMI CALCULATOR',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: GenderSelectionWidget(
                  gender: gender,
                  onMaleTap: () {
                    setState(() {
                      gender = Gender.male;
                    });
                  },
                  onFemaleTap: () {
                    setState(() {
                      gender = Gender.female;
                    });
                  }),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: HeightWidget(
                height: height,
                onChanged: ((value) {
                  setState(() {
                    height = value;
                  });
                }),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: WeightWidget(
                        onPlusTap: () {
                          setState(() {
                            if (weight <= 300) weight++;
                          });
                        },
                        onMinusTap: () {
                          setState(() {
                            if (weight >= 2) weight--;
                          });
                        },
                        weight: weight),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: AgeWidget(
                      age: age,
                      onPlusTap: () {
                        setState(() {
                          if (age <= 150) age++;
                        });
                      },
                      onMinusTap: () {
                        setState(() {
                          if (age >= 2) age--;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          CalculateButton(
            weight: weight,
            height: height,
            age: age,
            gender: gender,
          ),
        ],
      ),
    );
  }
}
