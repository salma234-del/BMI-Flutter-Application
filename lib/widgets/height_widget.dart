import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HeightWidget extends StatelessWidget {
  
  const HeightWidget({
    required this.height,
    required this.onChanged,
    Key? key,
  }) : super(key: key);

  final double height;

  final ValueChanged<double> onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
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
            onChanged: (value) => onChanged(value),
            min: 50,
            max: 250,
            inactiveColor: Colors.white,
            activeColor: Color(0xffe5174d),
          ),
        ],
      ),
    );
  }
}
