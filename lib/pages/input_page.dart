import 'package:flutter/material.dart';
import '../components/icon_content.dart';
import '../components/reusable_card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../constants.dart';
import '../components/round_button.dart';
import '../components/bottomButton.dart';
import 'result_page.dart';
import 'package:bmi_calculator/calculator_brain.dart';
enum Gender {
  male,
  female,
}
int hight =180;
int weight=50;
int age   =25;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardcolor = kactive;
  Color femaleCardcolor = kinactive;
  Gender selectedgender;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: RepetedCard(
                      onpress: () {
                        setState(() {
                          selectedgender = Gender.male;
                        });
                      },
                      colour: selectedgender == Gender.male ? kactive : kinactive,
                      cardChild: IconContent(
                        icn: FontAwesomeIcons.mars,
                        txt: 'MALE',
                      ),
                    ),
                  ),
                  Expanded(
                    child: RepetedCard(
                      onpress: () {
                        setState(() {
                          selectedgender = Gender.female;
                        });
                      },
                      colour:
                          selectedgender == Gender.female ? kactive : kinactive,
                      cardChild: IconContent(
                        icn: FontAwesomeIcons.venus,
                        txt: 'FEMALE',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: RepetedCard(
                colour: kactive,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('HIGHT',style: klabeledtextstyle,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: <Widget>[
                        Text('$hight',style: klargeTextstyle),
                        Text('CM' ,style: klabeledtextstyle
                        )
                      ],
                    ),
                    SliderTheme(
                      data: SliderThemeData(thumbShape: RoundSliderThumbShape(
                        enabledThumbRadius: 15,),
                        thumbColor: kThColour,
                        activeTrackColor: Colors.white,
                        overlayColor: Color(0x40EB1555),
                        inactiveTrackColor: Color(0xFF8D8E98),
                        overlayShape: RoundSliderOverlayShape(overlayRadius: 30),
                      ),
                      child: Slider(value: hight.toDouble(),
                        min: 120,
                        max: 220,
                        onChanged: (double newValue){
                        setState(() {
                          hight = newValue.toInt();
                        });

                        },

                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: RepetedCard(
                      colour: kactive,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'WEIGHT',
                            style: klabeledtextstyle,
                          ),
                          Text('$weight',
                          style: klargeTextstyle,),
                          SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              RoundButton(
                                onPressed: (){
                                  setState(() {
                                    weight--;
                                  });
                                },
                                icon: FontAwesomeIcons.minus,
                              ),
                              RoundButton(
                                onPressed: (){
                                  setState(() {
                                    weight++;
                                  });

                                },
                                icon: FontAwesomeIcons.plus,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: RepetedCard(
                      colour: kactive,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'AGE',
                            style: klabeledtextstyle,
                          ),
                          Text('$age',
                            style: klargeTextstyle,),
                          SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              RoundButton(
                                onPressed: (){
                                  setState(() {
                                    age--;
                                  });
                                },
                                icon: FontAwesomeIcons.minus,
                              ),
                              RoundButton(
                                onPressed: (){
                                 setState(() {
                                   age++;
                                 });
                                },
                                icon: FontAwesomeIcons.plus,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            BottomButton(onTap: (){
              CalculatorBrain calc =CalculatorBrain(height: hight,weight: weight);

              Navigator.push(context, MaterialPageRoute(
                  builder: (context)=> Result_page(
                    bmiresult: calc.calculateBMI(), Rtext: calc.getResult(),Intrpretation: calc.getInterpretation(),
                  )));
            },
          Text:   Text('CALCULATE',
    style: kbottomTextstyle,
    ),
    ),
          ],
        ));

  }
}


