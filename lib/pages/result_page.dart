import 'package:flutter/material.dart';
import '../constants.dart';
import '../components/reusable_card.dart';
import '../components/bottomButton.dart';
class Result_page extends StatelessWidget {
  Result_page({@required this.bmiresult,@required this.Intrpretation,@required this.Rtext});
  final String bmiresult;
  final String Rtext;
  final String Intrpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Column(
               crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  color: Color(0xFF0a0d22),
                  child: Text(' Your Result',
                  style: klargeTextstyle,
                    textAlign: TextAlign.left,
                  ),
                  padding: EdgeInsets.all(15),
                  alignment: Alignment.bottomLeft,
                ),
              ],
            ),
          ),
          Expanded(
            flex: 5,
            child: RepetedCard(
                colour: Color(0xFF1d1f33),
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(Rtext,style: kresultTextstyle,),
                        Text(bmiresult,style: kBMITectstyle,),
                        Text(Intrpretation,style: klabeledtextstyle,textAlign: TextAlign.center,),
                      ],
                    ),
            ),
          ),
         BottomButton(
           onTap: (){
            Navigator.popAndPushNamed(context, '/');
           },
           Text: Text('RE-CALCULATE',
             style: TextStyle(
               color: Colors.white,
               fontSize: 25,
               fontWeight: FontWeight.bold,
             ),
           ),
         )
        ],
      ),
    );
  }
}
