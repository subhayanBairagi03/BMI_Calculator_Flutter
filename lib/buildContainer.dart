import 'package:flutter/material.dart';

import 'Constants.dart';

class buildContainer extends StatelessWidget {
  final Widget? smartChild;
  final Color color;
  buildContainer({this.smartChild, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        gradient: buildLinearGradient(color, cr2),
      ),
      child: smartChild,
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
