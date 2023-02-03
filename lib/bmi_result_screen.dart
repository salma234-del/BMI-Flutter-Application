import 'package:flutter/material.dart';

class BmiResultScreen extends StatelessWidget {
  final bool male;
  final bool female;
  final int age;
  final double result;
  BmiResultScreen({
    required this.age,
    required this.male,
    required this.result,
    required this.female,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff111324),
      appBar: AppBar(
        backgroundColor: Color(0xff111324),
        title: Center(
            child: Text(
          'BMI RESULT',
          style: TextStyle(
            fontSize: 20,
          ),
        )),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Container(
            height: 400,
            decoration: BoxDecoration(
              color: Color(0xff1b1a2e),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'GENDER: ',
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xff4f4f60),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      '${male ? 'Male' : female ? 'Female' : 'Not Selected'}',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'AGE: ',
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xff4f4f60),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      '$age',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'BMI RESULT: ',
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xff4f4f60),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      '${result.toStringAsFixed(2)}',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xffe5174d),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Text(
                        '${result >= 18.5 && result <= 24.9 ? 'Your BMI is Normal' : 'Your BMI is not Normal'}',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
