import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

enum Gender { male, female, none }

class GenderSelectionWidget extends StatelessWidget {
  const GenderSelectionWidget({
    required this.onMaleTap,
    required this.onFemaleTap,
    required this.gender,
    Key? key,
  }) : super(key: key);

  final void Function() onMaleTap;
  
  final void Function() onFemaleTap;

  final Gender gender;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: GestureDetector(
            onTap: onMaleTap,
            child: Container(
              decoration: BoxDecoration(
                color: gender == Gender.male ? Color(0xffe5174d) : Color(0xff1b1a2e),
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
            onTap: onFemaleTap,
            child: Container(
              decoration: BoxDecoration(
                color: gender == Gender.female ? Color(0xffe5174d) : Color(0xff1b1a2e),
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
    );
  }
}
