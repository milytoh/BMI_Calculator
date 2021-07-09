
import 'package:bmi_calulator/components/reuseable_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import '../constant_ver.dart';
import '../components/buttom_butten_card.dart';


class ResultPage extends StatelessWidget {
  ResultPage({@required this.calculation, @required this.result,
    @required this.interpretation});

  final String calculation;
  final String result;
  final String interpretation;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR '),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 1,
            child: Container(
              child: Text(
                "YOU BMI CALCULATION RESULT",
                style: kResultTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: ReuseableCard(
              mycolor: kInActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children:[
                  Text(
                    result,
                    style: kResultTextStyle2,
                  ),
                  Text(
                    calculation,
                    style: kNumberTextStyle,
                  ),
                  Text(
                    interpretation,
                    style: kResultBodyText,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
           BottomCard(
              onTap:  (){
                   Navigator.pop(context);
             },
             text: 'RE-TAKE',
           )
        ],
      ),
    );
  }
}
