import 'package:flutter/material.dart';

import 'Constants.dart';

class BottombuttonContainer extends StatelessWidget {
  final String? label;
  BottombuttonContainer({this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          '$label',
          style: Resulpagefont,
        ),
      ),
      margin: const EdgeInsets.only(top: 10.0),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              cr2,
              inactiveColorgrad,
            ]),
      ),
      height: 80.0,
      width: double.infinity,
    );
  }
}
