import 'package:flutter/material.dart';

class RepetedCard extends StatelessWidget {
  RepetedCard({@required this.colour, this.cardChild,this.onpress});
  final Color colour;
  final Widget cardChild;
  final Function onpress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Container(
          width: double.infinity,
          child: cardChild,
          margin: EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: colour,
            borderRadius: BorderRadius.circular(10),
          )),
    );
  }
}