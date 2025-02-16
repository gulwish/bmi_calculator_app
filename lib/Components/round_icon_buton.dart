import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({required this.icon, this.onClick});

  final IconData icon;
  final Function()? onClick;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(
        icon,
        color: Colors.white,
        size: 20,
      ),
      onPressed: onClick,
      constraints: BoxConstraints.tightFor(height: 44, width: 44),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}
