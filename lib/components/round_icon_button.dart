import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  const RoundIconButton(
      {super.key,
      required this.icon,
      required this.onPressed,
      this.onLongPressed});

  final IconData icon;
  final VoidCallback onPressed;
  final VoidCallback? onLongPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 0.0,
      onPressed: onPressed,
      onLongPress: onLongPressed ?? onLongPressed,
      constraints: const BoxConstraints.tightFor(
        width: 36.0,
        height: 36.0,
      ),
      shape: const CircleBorder(),
      fillColor: const Color(0xFFFFFFFF),
      child: Icon(icon),
    );
  }
}
