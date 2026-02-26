import 'package:flutter/material.dart';

class FlipClockDisplay extends StatelessWidget {
  final String time;

  const FlipClockDisplay({Key? key, required this.time}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: time.split(':').map((digit) {
          return FlipDigit(digit: digit);
        }).toList(),
      ),
    );
  }
}

class FlipDigit extends StatelessWidget {
  final String digit;

  const FlipDigit({Key? key, required this.digit}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 4.0),
      child: Text(
        digit,
        style: TextStyle(
          color: Colors.white,
          fontSize: 48,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
