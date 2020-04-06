import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.colour, this.cardChild, this.onPress});

  final Color colour;
  final Widget cardChild;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.only(top:18.0),
        padding: EdgeInsets.only(top: 15,bottom: 15, left: 20,right: 0),
        decoration: BoxDecoration(
          boxShadow:[
            BoxShadow(
              color: Colors.grey,
              blurRadius: 2,
              spreadRadius: 0.2,
              offset: Offset(5, 5),
            )
          ],
          color: colour,
          borderRadius: BorderRadius.circular(5.0),
        ),
      ),
    );
  }
}