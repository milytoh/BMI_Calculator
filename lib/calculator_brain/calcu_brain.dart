import 'dart:math';
import 'package:flutter/cupertino.dart';

class CalculatorBrain{
  CalculatorBrain({@required this.heightt, @required this.weightt});
   int heightt;
   int weightt;
   double bmi;


   double calculation(){
      bmi = weightt / pow(heightt/100, 2);
       return bmi.toDouble();
   }

   String myAge(age) {
     if (age < 18){
       return 'To young';
     }else{
       return age.toString();
     }
   }

   String getResult({calcResult}){
     if( calcResult >= 25 ){
       return 'OverWeight';
     }else if ( calcResult > 18.5){
       return 'Normal';
     }else{
       return 'UnderWeight';
     }
   }

   String getInterpretation({calcResult}){
     if( calcResult >= 25){
       return 'You have a higher than a normal body weight. Try to exercise more';
     }else if (calcResult > 18.5){
       return 'You have a normal body weight. Good job!';
     }else{
       return 'You have a lower than a normal body weight. please eat more';
     }
   }
}