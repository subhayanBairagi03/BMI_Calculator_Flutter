import 'package:bmi_calculator/InputPage.dart';
import 'package:flutter/material.dart';

import 'Buttombuttoncontainer.dart';
import 'Constants.dart';

class ResultPage extends StatelessWidget {
  //const ResultPage({Key? key}) : super(key: key);

  final String result;
  final String message;
  final String messageBody;

  ResultPage(
      {required this.result, required this.message, required this.messageBody});
  Color cro = inactiveColorgrad;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding:
                  const EdgeInsets.symmetric(vertical: 30.0, horizontal: 15.0),
              child: const Text(
                'Your Result: ',
                style: Resulpagefont,
              ),
            ),
          ),
          const SizedBox(
            height: 15.0,
          ),
          Expanded(
            flex: 5,
            child: Container(
              decoration: buildBoxDecoration(activeColorgrad),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Center(
                    child: Text(
                      message.toUpperCase(),
                      style: ResulttextStyle,
                    ),
                  ),
                  Container(
                    decoration: buildBoxDecoration(inactiveColorgrad),
                    margin:
                        EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0),
                    height: 350.0,
                    width: 40.0,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          result,
                          style: kRnumberstyle,
                        ),
                        Text(
                          messageBody,
                          textAlign: TextAlign.center,
                          style: messagetextstyle,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: bottomButton(
              ontap: () {
                Navigator.pop(context);
              },
              child: BottombuttonContainer(
                label: 'Re-Calculate',
              ),
            ),
          ),
        ],
      ),
    );
  }

  BoxDecoration buildBoxDecoration(Color c) {
    return BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              c,
              cr2,
            ]));
  }
}
