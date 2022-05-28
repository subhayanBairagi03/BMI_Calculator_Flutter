import 'package:flutter/material.dart';

import 'Constants.dart';

class Buttons extends StatelessWidget {
  final IconData? icon;
  final VoidCallback onPressed;
  Buttons({this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      constraints: const BoxConstraints.tightFor(width: 50.0, height: 36.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
        //side: BorderSide(color: Colors.red),
      ),
      fillColor: inactiveColorgrad,
      highlightColor: activeColorgrad,
      child: Icon(icon),
    );
  }
}
