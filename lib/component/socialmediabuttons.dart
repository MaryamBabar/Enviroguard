import 'package:flutter/material.dart';
class SocialMediaButtons extends StatelessWidget {
  const SocialMediaButtons({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        IconButton(
          icon: Image.asset(
            'lib/assets/images/google (3).png', // Replace with your Google icon image path
            width: 30,
            height: 30,
          ),
          onPressed: () {
            // Handle Google button press here
          },
        ),
        IconButton(
          icon: Image.asset(
            'lib/assets/images/facebook.png', // Replace with your Facebook icon image path
            width: 30,
            height: 30,
          ),
          onPressed: () {
            // Handle Facebook button press here
          },
        ),
        IconButton(
          icon: Image.asset(
            'lib/assets/images/apple.png', // Replace with your Apple icon image path
            width: 30,
            height: 30,
          ),
          onPressed: () {
            // Handle Apple button press here
          },
        ),
      ],
    );
  }
}




