import 'dart:math';

import 'package:flutter/material.dart';
import 'package:bmi_application/bmi_result_screen.dart';

class BmiScreen extends StatefulWidget {
  const BmiScreen({super.key});

  @override
  State<BmiScreen> createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
  bool male = false;
  bool female = false;
  double height = 180;
  int weight = 60;
  int age = 28;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff111324),
      appBar: AppBar(
        backgroundColor: Color(0xff111324),
        title: Center(
            child: Text(
          'BMI CALCULATOR',
          style: TextStyle(
            fontSize: 20,
          ),
        )),
      ),
      body: Column(children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        male = true;
                        female = false;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: male ? Color(0xffe5174d) : Color(0xff1b1a2e),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.male,
                            size: 90,
                            color: Colors.white,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'MALE',
                            style: TextStyle(
                              fontSize: 20,
                              color: Color(0xff4f4f60),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        female = true;
                        male = false;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: female ? Color(0xffe5174d) : Color(0xff1b1a2e),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.female,
                            size: 90,
                            color: Colors.white,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'FEMALE',
                            style: TextStyle(
                              fontSize: 20,
                              color: Color(0xff4f4f60),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xff1b1a2e),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'HEIGHT',
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xff4f4f60),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          '${height.round()}',
                          style: TextStyle(
                            fontSize: 40,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'cm',
                          style: TextStyle(
                            fontSize: 15,
                            color: Color(0xff4f4f60),
                          ),
                        ),
                      ],
                    ),
                    Slider(
                      value: height,
                      onChanged: ((value) {
                        setState(() {
                          height = value;
                        });
                      }),
                      min: 50,
                      max: 250,
                      inactiveColor: Colors.white,
                      activeColor: Color(0xffe5174d),
                    ),
                  ]),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                Expanded(
                    child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xff1b1a2e),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'WEIGHT',
                        style: TextStyle(
                          fontSize: 20,
                          color: Color(0xff4f4f60),
                        ),
                      ),
                      Text(
                        '$weight',
                        style: TextStyle(
                          fontSize: 40,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FloatingActionButton(
                            heroTag: 'weight-',
                            backgroundColor: Color(0xff434554),
                            child: Icon(
                              Icons.remove,
                              size: 30,
                            ),
                            onPressed: () {
                              setState(() {
                                if (weight >= 2) weight--;
                              });
                            },
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          FloatingActionButton(
                            heroTag: 'weight+',
                            backgroundColor: Color(0xff434554),
                            child: Icon(
                              Icons.add,
                              size: 30,
                            ),
                            onPressed: () {
                              setState(() {
                                if (weight <= 300) weight++;
                              });
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                )),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                    child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xff1b1a2e),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'AGE',
                        style: TextStyle(
                          fontSize: 20,
                          color: Color(0xff4f4f60),
                        ),
                      ),
                      Text(
                        '$age',
                        style: TextStyle(
                          fontSize: 40,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FloatingActionButton(
                            heroTag: 'age-',
                            backgroundColor: Color(0xff434554),
                            child: Icon(
                              Icons.remove,
                              size: 30,
                            ),
                            onPressed: () {
                              setState(() {
                                if (age >= 2) age--;
                              });
                            },
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          FloatingActionButton(
                            heroTag: 'age+',
                            backgroundColor: Color(0xff434554),
                            child: Icon(
                              Icons.add,
                              size: 30,
                            ),
                            onPressed: () {
                              setState(() {
                                if (age <= 150) age++;
                              });
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                )),
              ],
            ),
          ),
        ),
        Container(
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
                    male: male,
                    female: female,
                  ),
                ),
              );
            },
            child: Text(
              'CALCULATE',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
