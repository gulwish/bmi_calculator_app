import 'dart:core';

import 'package:bmi_calculator/Components/bottom_bar_button.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  final String? resultText;
  final String? bmiResult;
  final String? interpretationText;

  const ResultsPage(
      {required this.resultText,
      required this.interpretationText,
      required this.bmiResult});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            child: Text(
              "Your Result",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Center(
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      resultText!,
                      style: TextStyle(
                          color: Color(0xFFF4FCB8E),
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    Text(
                      bmiResult!,
                      style: TextStyle(
                          fontSize: 45.0, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      interpretationText!,
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ),
            ),
          ),
          BottomBarButton(
            buttonText: 'RE-CALCULATE',
            navigateTo: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
