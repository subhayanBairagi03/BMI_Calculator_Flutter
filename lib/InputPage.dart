import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: const Center(child: Text('BMI CALCULATOR')),
        ),
        body: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: buildContainer(const Color(0xFF24494B)),
                  ),
                  Expanded(
                    child: buildContainer(const Color(0xFF24494B)),
                  )
                ],
              ),
            ),
            Expanded(
              child: buildContainer(const Color(0xFF24494B)),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: buildContainer(const Color(0xFF24494B)),
                  ),
                  Expanded(
                    child: buildContainer(const Color(0xFF24494B)),
                  )
                ],
              ),
            )
          ],
        ));
  }

  Container buildContainer(Color cr) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
      decoration: BoxDecoration(
        color: cr,
        borderRadius: BorderRadius.circular(10.0),
        gradient: buildLinearGradient(Color(0xFF24494B), Color(0xFF08E8BC)),
      ),
    );
  }

  LinearGradient buildLinearGradient(Color cr1, Color cr2) {
    return LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          cr1,
          cr2,
        ]);
  }
}
