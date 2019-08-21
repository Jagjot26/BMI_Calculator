import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({this.onPress, this.buttonText});

  final String buttonText;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: Center(
          child: Text(
            buttonText,
            style: kLargeButtonTextStyle,
          ),
        ),
        margin: EdgeInsets.only(top: 10.0, left: 16, right: 16, bottom: 10),
        width: double.infinity,
        height: kBottomContainerHeight,
        decoration: BoxDecoration(
          color: kBottomContainerColour,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
