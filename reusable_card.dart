import 'package:flutter/material.dart';


class ReusableCard extends StatelessWidget {

  ReusableCard(
      {required this.colour, required this.cardChild, required this.onPress()});

  final Color colour;
  final Widget cardChild;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
      return GestureDetector(
        onTap: (){
          onPress();
        },
        child: Container(
          margin: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
              color: colour,
              borderRadius: BorderRadius.circular(10.0)
          ),
          child: cardChild,
        ),
      );
  }
}

//0xFF1D1E33 cor a ser usada