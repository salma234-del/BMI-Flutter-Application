import 'package:flutter/material.dart';

class WeightWidget extends StatelessWidget {

  const WeightWidget({
    super.key,
    required this.onPlusTap,
    required this.onMinusTap,
    required this.weight,
  });

  final void Function() onPlusTap;

  final void Function() onMinusTap;

  final int weight;

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
                onPressed: onMinusTap,
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
                onPressed: onMinusTap,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
