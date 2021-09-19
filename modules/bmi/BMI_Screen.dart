import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_app6/Modules/BMI/BMI_Result_Screen.dart';

class BMI_Screen extends StatefulWidget {
  @override
  _BMI_ScreenState createState() => _BMI_ScreenState();
}

class _BMI_ScreenState extends State<BMI_Screen> {
  bool isMale = true;
  double height = 120;
  int weight = 40;
  int age = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(9, 15, 29, 255),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(9, 15, 29, 255),
        title: Center(
            child: Text(
          'BMI',
          style: TextStyle(fontFamily: 'fonts'),
        )),
      ),
      body: Column(
        children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        isMale = true;
                      });
                    },
                    child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: isMale
                              ? Colors.blue
                              : Color.fromRGBO(16, 19, 34, 25),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.male,
                              size: 75,
                              color: Colors.white,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              'MALE',
                              style: TextStyle(
                                  fontSize: 24,
                                  color: isMale ? Colors.white : Colors.grey),
                            ),
                          ],
                        )),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        isMale = false;
                      });
                    },
                    child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: !isMale
                                ? Colors.blue
                                : Color.fromRGBO(16, 19, 34, 25)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.female,
                              size: 75,
                              color: Colors.white,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              'FEMALE',
                              style: TextStyle(
                                  fontSize: 24,
                                  color: !isMale ? Colors.white : Colors.grey),
                            ),
                          ],
                        )),
                  ),
                ),
              ],
            ),
          )),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color.fromRGBO(16, 19, 34, 25),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'HEIGHT',
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    mainAxisAlignment: MainAxisAlignment.center,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text('${height.round()}',
                          style: TextStyle(color: Colors.white, fontSize: 30)),
                      Text('CM',
                          style: TextStyle(color: Colors.white, fontSize: 14)),
                    ],
                  ),
                  Slider(
                      value: height,
                      min: 80,
                      max: 220,
                      onChanged: (value) {
                        setState(() {
                          print(value.round());
                          height = value;
                        });
                      })
                ],
              ),
            ),
          )),
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromRGBO(16, 19, 34, 25),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('WEIGHT',
                            style:
                                TextStyle(color: Colors.white, fontSize: 30)),
                        Text('${weight}',
                            style:
                                TextStyle(color: Colors.white, fontSize: 24)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              heroTag: 'WEIGHT-',
                              onPressed: () {
                                setState(() {
                                  weight--;
                                });
                              },
                              backgroundColor: Colors.blueAccent,
                              mini: true,
                              child: Icon(Icons.remove),
                            ),
                            FloatingActionButton(
                              heroTag: 'WEIGHT+',
                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                              backgroundColor: Colors.blueAccent,
                              mini: true,
                              child: Icon(Icons.add),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromRGBO(16, 19, 34, 25),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Age',
                            style:
                                TextStyle(color: Colors.white, fontSize: 30)),
                        Text('${age}',
                            style:
                                TextStyle(color: Colors.white, fontSize: 24)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              heroTag: 'age-',
                              onPressed: () {
                                setState(() {
                                  age--;
                                });
                              },
                              backgroundColor: Colors.blueAccent,
                              mini: true,
                              child: Icon(Icons.remove),
                            ),
                            FloatingActionButton(
                              heroTag: 'age+',
                              onPressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                              backgroundColor: Colors.blueAccent,
                              mini: true,
                              child: Icon(Icons.add),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )),
          Container(
            height: 50,
            width: double.infinity,
            color: Color.fromARGB(250, 250, 0, 50),
            child: MaterialButton(
              onPressed: () {
                var result = weight / pow(height / 100, 2);
                print(result.round());

                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => BMI_RESULT(
                            age: age, isMale: isMale, result: result)));
              },
              child: Text(
                'CALCALATE',
                style: TextStyle(color: Colors.white, fontSize: 22),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
