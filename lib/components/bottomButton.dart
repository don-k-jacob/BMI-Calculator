import 'package:flutter/material.dart';
import '../constants.dart';


class BottomButton extends StatelessWidget {
  const BottomButton({@required this.onTap, @required this.Text});
  final Function onTap ;
  final Widget Text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: kThColour,
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: kBbHight,
        padding: EdgeInsets.only(bottom: 20),
        child: Center(
          child: Text,
        ),
      ),
    );
  }
}
