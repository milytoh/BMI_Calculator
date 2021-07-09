import 'package:flutter/material.dart';
import '../constant_ver.dart';

class IconContent extends StatelessWidget {
  IconContent({this.myIcon, this.myText});
  final  IconData myIcon;
  final  String myText;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment:MainAxisAlignment.center,
      children: [
        Icon(
          myIcon,
          size: 45,
        ),
        SizedBox(height: 17,),
        Text(
          myText,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}

