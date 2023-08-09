import 'package:flutter/material.dart';
class OrDivider extends StatelessWidget {
  final Color dividerColor;
  final double dividerThickness;
  final Color textColor;
  final double textSize;
  final String orText; // New parameter for the 'OR' text
  const OrDivider({
    Key? key,
    this.dividerColor = Colors.grey,
    this.dividerThickness = 1.0,
    this.textColor = Colors.grey,
    this.textSize = 14,
    this.orText = 'OR', // Default value for the 'OR' text
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Divider(
            color: dividerColor,
            thickness: dividerThickness,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4.0),
          child: Text(
            orText,
            style: TextStyle(
              color: textColor,
              fontSize: textSize,
            ),
          ),
        ),
        Expanded(
          child: Divider(
            color: dividerColor,
            thickness: dividerThickness,
          ),
        ),
      ],
    );
  }
}