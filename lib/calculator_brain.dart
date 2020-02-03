import 'dart:math';

import 'package:bmi_calculator/pages/input_page.dart';
class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});

  final int height;
  final int weight;
  double _bmi;
  String calculateBMI() {
     _bmi = weight / pow(hight / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

 String getResult(){
    if(_bmi >=25){
      return 'OVERWEIGHT';
    }else if(_bmi <= 18.5)
      {
        return 'UNDERWEIGHT';
      }
    else
      {
        return 'NORMAL';
      }
 }

 String getInterpretation() {
   if(_bmi >=25){
     return 'You have a higher weight than normal body weight . Try to exercice more. ';
   }else if(_bmi <= 18.5)
   {
     return 'You have a lower weight than normal body weight . You can eat a bit more';
   }
   else
   {
     return 'You have a normal body weight. Good Job';
   }
 }

}