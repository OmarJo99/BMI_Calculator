import 'package:flutter/material.dart';
import 'package:flutter_app6/Modules/BMI/BMI_Screen.dart';

class BMI_RESULT extends StatelessWidget {
  bool isYellow = false;
  final double result;
  final bool isMale;
  final int age;

  BMI_RESULT({
    required this.age,
    required this.isMale,
    required this.result,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: result > 18.5 ? Colors.green : Colors.yellow,
      appBar: AppBar(
        title: Center(
            child: Text(
          'BMI_RESULT',
          style: TextStyle(color: result > 18.5 ? Colors.white : Colors.black),
        )),
        backgroundColor: result > 18.5 ? Colors.green : Colors.yellow,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Gender ${isMale ? 'Male' : 'Female'}',
              style: TextStyle(
                  color: result > 18.5 ? Colors.white : Colors.black,
                  fontSize: 32),
            ),
            Text(
              'Result :${result.round()}',
              style: TextStyle(
                  color: result > 18.5 ? Colors.white : Colors.black,
                  fontSize: 32),
            ),
            Text(
              'Age : ${age}',
              style: TextStyle(
                  color: result > 18.5 ? Colors.white : Colors.black,
                  fontSize: 32),
            ),
          ],
        ),
      ),
    );
  }
}
