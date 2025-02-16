import 'package:flutter/material.dart';

import 'constants.dart';

class BottomBarButton extends StatelessWidget {
  final String? buttonText;
  final Function()? navigateTo;

  BottomBarButton({required this.buttonText, this.navigateTo});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: navigateTo,
      child: Container(
        child: Center(
          child: Text(
            buttonText!,
            style: kLargeButtonTextStyle,
          ),
        ),
        decoration: BoxDecoration(
            color: bottomContainerColour,
            borderRadius: BorderRadius.circular(5.0)),
        margin: EdgeInsets.only(top: 10),
        padding: EdgeInsets.all(15),
        height: 60.0,
        width: double.infinity,
      ),
    );
  }
}
