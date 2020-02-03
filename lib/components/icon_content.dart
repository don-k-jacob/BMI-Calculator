import 'package:flutter/material.dart';
import '../constants.dart';

class IconContent extends StatelessWidget {
  IconContent({this.icn,this.txt});
  final IconData icn;
  final String txt;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icn,
          size: kiconsize,
        ),
        SizedBox(
          height: kspacing,
        ),
        Text(txt,style: klabeledtextstyle

        ),
      ],
    );
  }
}
