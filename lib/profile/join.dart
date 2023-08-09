import 'package:flutter/material.dart';

class JoinPage extends StatelessWidget {
  const JoinPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('Join Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ButtonWithLogo(
              
              text: 'SIGN UP WITH GOOGLE',
              width: 100,
              logo: Image.asset('lib/assets/images/google (4).png'),
              onPressed: () {
                // Add your logic for the 'Join Now' button here
              },
            ),
            const SizedBox(height: 20),
            ButtonWithLogo(
              text: 'SIGN IN WITH EMAIL',
              width: 150,
              logo: const Icon(Icons.message),
              onPressed: () {
                // Add your logic for the 'Login' button here
              },
            ),
          ],
        ),
      ),
    );
  }
}

class ButtonWithLogo extends StatelessWidget {
  final String text;
  final double width;
  final Widget logo;
  final VoidCallback onPressed;

  const ButtonWithLogo({super.key, 
    required this.text,
    required this.width,
    required this.logo,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        foregroundColor: const Color.fromARGB(255, 0, 0, 0), backgroundColor: const Color.fromARGB(255, 255, 255, 255), minimumSize: Size(width, 50), // Text color
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: logo,
          ),
          Text(text),
        ],
      ),
    );
  }
}
