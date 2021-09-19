import 'package:flutter/material.dart';
import 'package:flutter_app6/modules/bmi/BMI_Screen.dart';

void main() async {
  runApp(MyApp());
}

//Stateless
//Stateful

//class MyApp

class MyApp extends StatelessWidget {
  MyApp();

  //constructor
  //build
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: BMI_Screen());
  }
}
