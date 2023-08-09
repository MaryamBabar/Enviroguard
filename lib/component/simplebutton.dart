import 'package:flutter/material.dart';
class CustomButton1 extends StatelessWidget {
  final String buttonText;
  final Function()? onPressed;
  final Color buttonColor;
  final IconData icon;
  final String label;
  final TextStyle textStyle;
  const CustomButton1({
    Key? key,
    required this.buttonText,
    this.onPressed,
    this.buttonColor = const Color.fromARGB(255, 0, 0, 0),
    required this.icon,
    required this.label,
    required this.textStyle,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          backgroundColor: buttonColor,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 15.0),
          child: Text(
            buttonText,
            style: textStyle, // Use the provided textStyle parameter
          ),
        ),
      ),
    );
  }
}








