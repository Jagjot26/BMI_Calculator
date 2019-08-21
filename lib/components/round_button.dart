import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  //here we used a class extending stles to make a button from scratch, and essentially mimic the FloatingActionButton
  RoundIconButton({this.icon, this.onPress});
  final IconData icon;
  final Function onPress;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      //RawMaterialButton widget class is used for building buttons from scratch
      child: Icon(
          icon), //Icon widget requires an either Icons.someicon or FontAwesomeIcons.someicon value
      onPressed: onPress,
      constraints: BoxConstraints.tightFor(width: 56, height: 56),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
      elevation: 0.0,
    );
  }
}
