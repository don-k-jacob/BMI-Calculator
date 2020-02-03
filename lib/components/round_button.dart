import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  RoundButton({@required this.onPressed,@required this.icon});
  final Function onPressed;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: onPressed,
      shape: CircleBorder(),
      elevation: 6.0,
      fillColor: Color(0xFF4C4F5E),
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
    );
  }
}
