
import 'package:flutter/material.dart';

class ReuseableCard extends StatelessWidget {
 ReuseableCard({@required this.mycolor, this.cardChild, this.onPress});

 final Color mycolor;
 final Widget cardChild;
 final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: mycolor,//Color(0xff111428),
          borderRadius: BorderRadius.circular(15) ,
        ),
      ),
    );
  }
}


