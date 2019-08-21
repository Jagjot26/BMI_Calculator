import 'package:flutter/material.dart';

//A refactored container widget that accepts a color argument for its BoxDecoration widget
class ReusableCard extends StatelessWidget {
  final Color colour;
  final Widget cardChild;
  final Function onPress;

  ReusableCard(
      {@required this.colour,
      this.cardChild,
      this.onPress}); //required means that all objects need to have a colour value specified in their constructors

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
