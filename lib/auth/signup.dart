import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

import 'login_page.dart'; // Step 1: Import the gesture recognizer library

void main() {
  runApp(const SignupApp());
}

class SignupApp extends StatelessWidget {
  const SignupApp({Key? key}) : super(key: key); // Add the key parameter to the constructor

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SignupPage(),
    );
  }
}

class SignupPage extends StatelessWidget {
  const SignupPage({Key? key}) : super(key: key); // Add the key parameter to the constructor

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white, // Set the app bar background color
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Sign Up',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            const TextFieldWithIcon(
              label: 'Full Name',
              icon: Icons.person,
            ),
            const SizedBox(height: 10),
            const TextFieldWithIcon(
              label: 'Email Address',
              icon: Icons.email,
            ),
            const SizedBox(height: 10),
            const TextFieldWithIcon(
              label: 'Phone Number',
              icon: Icons.phone,
            ),
            const SizedBox(height: 10),
            const TextFieldWithIcon(
              label: 'Password',
              icon: Icons.lock,
              obscureText: true,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Implement your signup logic here
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green, // Set the sign-up button color to green
              ),
              child: const Text('Sign Up'),
            ),
            const SizedBox(height: 20),
            const Divider(),
            const Text(
              'Connect with',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            // Step 2: Add GestureDetector for the Google logo
            GestureDetector(
              onTap: () {
                // Add your Google login logic here
              },
              child: Image.asset(
                'lib/assets/images/google (4).png', // Replace with the actual path to your Google logo image
                width: 48, // Set the width of the image as per your requirement
                height: 48, // Set the height of the image as per your requirement
                color:  Colors.white, // Set the color of the icon to green
              ),
            ),
            const Divider(),
            // Step 3: Use RichText for the link with custom text style
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: 'Already have an account? ',
                style: const TextStyle(color: Colors.black, fontSize: 16),
                children: [
                  TextSpan(
                    text: 'Sign in',
                    style: const TextStyle(
                      color: Color.fromRGBO(76, 175, 80, 1), // Customize the link text color
                      decoration: TextDecoration.underline,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const LoginPage()), // Replace 'LoginPage()' with the actual login page widget.
                        );
                        // Add your navigation logic to the sign-in page here
                      },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TextFieldWithIcon extends StatelessWidget {
  final String label;
  final IconData icon;
  final bool obscureText;

  const TextFieldWithIcon({
    Key? key,
    required this.label,
    required this.icon,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: Icon(icon, color: Colors.green), // Set the color of the icon to green
      ),
    );
  }
}
