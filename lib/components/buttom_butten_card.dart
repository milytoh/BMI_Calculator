import 'package:flutter/material.dart';
import '../constant_ver.dart';


class BottomCard extends StatelessWidget {
  BottomCard({this.text, @required this.onTap});
  final String text;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: kBottomContainerHeight,
        width: double.infinity,
        padding: EdgeInsets.only(bottom: 15.0),
        color: kBottomContainerColor,
        child: Center(
          child: Text(
            text,
            style: kBottomButtonText,
          ),
        ),
      ),
    );
  }
}
