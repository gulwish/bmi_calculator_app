import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color colour;
  final Widget? cardChild;
  final Function()? onPress;

  ReusableCard({
    required this.colour,
    this.cardChild,
    this.onPress,
  }) {}

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(5.0),
        ),
        margin: EdgeInsets.all(8),
      ),
    );
  }
}
