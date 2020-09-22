import 'package:flutter/material.dart';
import 'file:///C:/Users/PC/AndroidStudioProjects/Bootcamp-flutter/bmi_calculator/lib/components/constants.dart';

class IconContent extends StatelessWidget {
  IconContent({this.icon, this.label});

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          label.toUpperCase(),
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
