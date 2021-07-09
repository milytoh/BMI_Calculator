import  'dart:ui';
import 'file:///C:/mobileapps/andriod/bmi_calulator/lib/screen/result_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../components/reuseable_card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/icon_content.dart';
import '../constant_ver.dart';
import '../components/buttom_butten_card.dart';
import '../components/round_icon_button.dart';
import 'package:bmi_calulator/calculator_brain/calcu_brain.dart';
import 'package:bmi_calulator/screen/menu.dart';


enum Gender{
  male,
  female,
}


class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = kInActiveCardColor;
  Color femaleCardColor = kInActiveCardColor;

  Gender selectGender;
  int height = 180;
  int weight = 25;
  int age = 20;


    @override
    Widget build(BuildContext context) {
      return Scaffold(
         drawer: Menu(),
          appBar: AppBar(
            title: Center(child: Text('BMI CALCULATOR')),
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: ReuseableCard(
                        onPress: (){
                          setState(() {
                            selectGender = Gender.male;
                            // upDateColor(gender: SelectGender.female);
                          });
                        },
                        cardChild: IconContent(
                          myIcon: FontAwesomeIcons.mars,
                          myText: 'MALE',
                        ),
                        mycolor: selectGender == Gender.male ? kActiveCardColor:kInActiveCardColor,
                      ),
                    ),
                    Expanded(
                      child: ReuseableCard(
                        onPress: (){
                          setState(() {
                            selectGender = Gender.female;
                            // upDateColor(gender: SelectGender.female);
                          });
                        },
                        cardChild: IconContent(
                          myIcon: FontAwesomeIcons.venus,
                          myText: 'FEMALE',
                        ),
                        mycolor: selectGender == Gender.female?kActiveCardColor:kInActiveCardColor,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ReuseableCard(
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                    'HEIGHT',
                    style: kLabelTextStyle,
                      ),
                      Row(
                        textBaseline: TextBaseline.alphabetic,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        children: [
                          Text(
                            height.toString(),
                            style: kNumberTextStyle,
                          ),
                          Text(
                            'cm',
                            style: kLabelTextStyle,
                          ),
                        ],
                      ),
                      SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          inactiveTrackColor: kInactiveSliderColor,
                          activeTrackColor: Colors.white,
                          thumbColor: kSliderThumbColor,
                          overlayColor:  kSliderOverlayColor,
                          thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                          overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
                        ),
                        child: Slider(
                          value: height.toDouble(),
                          min: 120.0,
                          max: 220.0,
                          onChanged: (double newValue){
                            setState(() {
                              height = newValue.round();
                            });

                          },

                        ),
                      ),
                    ],
                  ),
                  mycolor: kActiveCardColor,
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: ReuseableCard(
                        mycolor: kActiveCardColor,
                        cardChild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('WEIGHT', style: kLabelTextStyle,),
                            Text(weight.toString(),style: kNumberTextStyle,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                 RoundIconButton(
                                   child: FontAwesomeIcons.minus,
                                   onPress: (){
                                     setState(() {
                                       weight--;
                                     });
                                   },
                                 ),
                                 SizedBox(width: 7.0,),
                                 RoundIconButton(
                                   onPress: (){
                                     setState(() {
                                       weight++;
                                     });
                                   },
                                   child: FontAwesomeIcons.plus,
                                 ),
                               ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: ReuseableCard(
                        cardChild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('AGE', style: kLabelTextStyle,),
                            Text(age.toString(),style: kNumberTextStyle,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                RoundIconButton(
                                  child: FontAwesomeIcons.minus,
                                  onPress: (){
                                    setState(() {
                                      age--;
                                    });
                                  },
                                ),
                                SizedBox(width: 7.0,),
                                RoundIconButton(
                                  onPress: (){
                                    setState(() {
                                      age++;
                                    });
                                  },
                                  child: FontAwesomeIcons.plus,
                                ),
                              ],
                            ),
                          ],
                        ),
                        mycolor: kActiveCardColor,
                      ),
                    ),
                  ],
                ),
              ),
               BottomCard(
                onTap: (){
                  CalculatorBrain cal = CalculatorBrain(heightt: height, weightt: weight);
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return ResultPage(
                      result: cal.getResult(calcResult: cal.calculation()),
                      calculation: cal.calculation().toStringAsFixed(1),
                      interpretation: cal.getInterpretation(calcResult: cal.calculation() ),
                    );
                  }),);
                },
                text: 'CALCULATE',
              ),
            ],
          )
      );
    }
  }


