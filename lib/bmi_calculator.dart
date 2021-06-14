import 'dart:math';
import 'package:flutter/material.dart';

class BMICalculator extends StatefulWidget {
  final String title;
  const BMICalculator(
    Map<dynamic, String> map, {
    Key key,
    this.title,
  }) : super(key: key);

  @override
  _BMICalculatorState createState() => _BMICalculatorState();
}

class _BMICalculatorState extends State<BMICalculator> {
  double bmiResult = 0.0;
  double height;
  double weight;

  double calculateBMI(double height, double weight) {
    return weight / pow(height, 2);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        child: Column(
          children: [
            Row(
              children: [
                Text("Height [m]: "),
                Flexible(
                  child: TextField(
                    decoration: InputDecoration(
                      isDense: true,
                    ),
                    onChanged: (t) {
                      height = double.tryParse(t);
                    },
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Text("Weight [kg]: "),
                Flexible(
                  child: TextField(
                    decoration: InputDecoration(
                      isDense: true,
                    ),
                    onChanged: (t) {
                      weight = double.tryParse(t);
                    },
                  ),
                ),
              ],
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  bmiResult = calculateBMI(height, weight);
                });
              },
              child: Text('Calculate'),
            ),
            Text('Result: $bmiResult')
          ],
        ),
      ),
    );
  }
}
