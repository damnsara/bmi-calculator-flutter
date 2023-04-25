import 'package:flutter/material.dart';

class IconContent extends StatelessWidget{

  const IconContent({required this.icon, required this.label});

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
            icon,
            size: 70.0,
            color: Colors.white,
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          label,
          style: TextStyle(
              fontSize: 18.0,
              color: Color(0xFF8D8E98)
          ),
        ),
      ],
    );
  }
}