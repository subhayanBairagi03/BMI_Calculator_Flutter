import 'package:flutter/material.dart';

import 'Constants.dart';

class cardWidget extends StatelessWidget {
  cardWidget({required this.icon, required this.sex});

  final IconData icon;
  final String sex;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0,
        ),
        const SizedBox(
          height: 15.0,
        ),
        Text(
          sex,
          style: labeltextstyle,
        ),
      ],
    );
  }
}
