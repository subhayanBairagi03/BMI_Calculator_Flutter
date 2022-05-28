import 'dart:io';

import 'package:bmi_calculator/Buttons.dart';
import 'package:bmi_calculator/CalculateBMI.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'Buttombuttoncontainer.dart';
import 'Buttons.dart';
import 'Constants.dart';
import 'ResultPage.dart';
import 'buildContainer.dart';
import 'cardWidget.dart';

enum GenderType { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  GenderType? gender;

  int height = 180;

  int age = 25;

  int weight = 72;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: const Center(child: Text('BMI CALCULATOR')),
          elevation: 10.0,
          shadowColor: inactiveColorgrad,
          actions: [
            TextButton(
                onPressed: () {
                  exit(0);
                },
                child: Text('Exit'))
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          gender = GenderType.male;
                        });
                      },
                      child: buildContainer(
                        color: (gender == GenderType.male)
                            ? activeColorgrad
                            : inactiveColorgrad,
                        smartChild: cardWidget(
                          icon: FontAwesomeIcons.mars,
                          sex: 'MALE',
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          gender = GenderType.female;
                        });
                      },
                      child: buildContainer(
                        color: (gender == GenderType.female)
                            ? activeColorgrad
                            : inactiveColorgrad,
                        smartChild: cardWidget(
                            icon: FontAwesomeIcons.venus, sex: 'FEMALE'),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: buildContainer(
                color: inactiveColorgrad,
                smartChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'HEIGHT',
                      style: labeltextstyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text('$height', style: knumberStyle),
                        const Text('cm'),
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        thumbColor: inactiveColorgrad,
                        activeTrackColor: activeColorgrad,
                        inactiveTrackColor: cr2,
                        thumbShape: const RoundSliderThumbShape(
                            enabledThumbRadius: 15.0,
                            elevation: 5.0,
                            pressedElevation: 10.0),
                        overlayShape:
                            const RoundSliderOverlayShape(overlayRadius: 30.0),
                        overlayColor: Color(0x4008E8BC),
                      ),
                      child: Slider(
                          value: height.toDouble(),
                          max: 250.0,
                          min: 120.0,
                          onChanged: (double newvalue) {
                            setState(() {
                              height = newvalue.toInt();
                            });
                          }),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: buildContainer(
                      color: inactiveColorgrad,
                      smartChild: Column(
                        children: [
                          const Text(
                            'Weight',
                            style: labeltextstyle,
                          ),
                          Text(
                            '$weight',
                            style: knumberStyle,
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Buttons(
                                  icon: FontAwesomeIcons.minus,
                                  onPressed: () {
                                    setState(() {
                                      weight--;
                                    });
                                  },
                                ),
                                const SizedBox(
                                  width: 15.0,
                                ),
                                Buttons(
                                  icon: FontAwesomeIcons.plus,
                                  onPressed: () {
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: buildContainer(
                      color: inactiveColorgrad,
                      smartChild: Column(
                        children: [
                          const Text(
                            'Age',
                            style: labeltextstyle,
                          ),
                          Text(
                            '$age',
                            style: knumberStyle,
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Buttons(
                                  icon: FontAwesomeIcons.minus,
                                  onPressed: () {
                                    setState(() {
                                      age--;
                                    });
                                  },
                                ),
                                const SizedBox(
                                  width: 15.0,
                                ),
                                Buttons(
                                  icon: FontAwesomeIcons.plus,
                                  onPressed: () {
                                    setState(() {
                                      age++;
                                    });
                                  },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            bottomButton(
              ontap: () {
                CalculateBMI cal = CalculateBMI(weight: weight, height: height);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return ResultPage(
                        result: cal.calBMI(),
                        message: cal.Message(),
                        messageBody: cal.Messagebody(),
                      );
                    },
                  ),
                );
              },
              child: BottombuttonContainer(
                label: 'Calculate',
              ),
            )
          ],
        ));
  }
}

class bottomButton extends StatelessWidget {
  final VoidCallback ontap;
  final Widget child;
  bottomButton({required this.ontap, required this.child});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: child,
    );
  }
}
