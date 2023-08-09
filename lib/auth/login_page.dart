import 'package:final_project/auth/navigationbar.dart';
import 'package:final_project/auth/signup.dart';

import 'package:flutter/material.dart';

import '../component/divider.dart';
import '../component/simplebutton.dart';
import '../component/socialmediabuttons.dart';



class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  @override
  // ignore: library_private_types_in_public_api
  _LoginPageState createState() => _LoginPageState();
}
class _LoginPageState extends State<LoginPage> {
  final PageController _pageController = PageController(initialPage: 0);
  bool showReferralTextField = false; // Track if the referral text field should be shown
  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      setState(() {});
    });
  }
  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: PreferredSize(
      //   preferredSize: const Size.fromHeight(250),
      //   child: AppBar(
      //     elevation: 0.0,
      //     leading: IconButton(
      //       icon: const Icon(Icons.arrow_back_ios),
      //       onPressed: () {
      //         Navigator.pop(context);
      //       },
      //     ),
      //     title: const Text(''),
      //     flexibleSpace: Container(
      //       height: 306,
      //       decoration: const BoxDecoration(
      //         image: DecorationImage(
      //           image: AssetImage('images/design-(6).png'),
      //           fit: BoxFit.cover,
      //         ),
      //       ),
      //     ),
      //   ),
      // ),
      body: Container(
        color: Colors.white, // Set the background color here
        child: Stack(
          children: [
            Center(
              child: Container(
                padding: const EdgeInsets.all(15),
                margin: const EdgeInsets.all(3),
                child: ListView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(4, 0, 80, 0),
                      child: SizedBox(
                        width: 50,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(4, 0, 8, 0),
                          child:  Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              SizedBox(width: 10),
                              Text(
                                'SIGN IN',
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 17, 17, 17),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Flexible(
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
                            child: Text(
                              ' Say goodbye to uncertainties and welcome a new era of crop protection!',
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Color.fromARGB(255, 158, 158, 158),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        SocialMediaButtons(),
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(15, 5, 15, 5),
                      child: const TextField(
                        decoration: InputDecoration(
                          labelText: 'Email',
                          labelStyle: TextStyle(color: Colors.grey),
                          border: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Color.fromARGB(255, 142, 142, 143)),
                          ),
                          suffixIcon: Icon(
                            Icons.check_circle,
                            color: Colors.green,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(15, 5, 15, 5),
                      child: const TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          labelStyle: TextStyle(color: Colors.grey),
                          border: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Color.fromARGB(255, 142, 142, 143)),
                          ),
                          suffixIcon: Icon(
                            Icons.visibility,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              showReferralTextField = true; // Show the referral text field
                            });
                          },
                          child: const Text(
                            'Have a referral code',
                            style: TextStyle(
                              fontSize: 16,
                              color: Color.fromARGB(255, 192, 192, 192),
                            ),
                          ),
                        ),
                      ],
                    ),
                    if (showReferralTextField) // Conditionally show the referral text field
                      Container(
                        padding: const EdgeInsets.fromLTRB(15, 5, 15, 5),
                        child: const TextField(
                          decoration: InputDecoration(
                            labelText: 'Referral Code',
                            labelStyle: TextStyle(color: Colors.grey),
                            border: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 142, 142, 143)),
                            ),
                          ),
                        ),
                      ),
                    const SizedBox(height: 5),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30, 15, 30, 0),
                      child: CustomButton1(
                        buttonText: 'Sign in',
                        icon: Icons.apple,
                        onPressed: () {
                          Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const BottomNavBar()), // Replace 'LoginPage()' with the actual login page widget.
                        );
                          // Handle button press here
                        },
                        buttonColor: const Color.fromARGB(255, 107, 190, 107),
                        label: '',
                        textStyle: const TextStyle(
                          color: Color.fromARGB(255, 7, 7, 7),
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(15, 5, 15, 0),
                      child: OrDivider(
                        dividerColor: Colors.grey,
                        dividerThickness: 1.0,
                        textColor: Colors.grey,
                        textSize: 14,
                        orText: 'Don"t have an account?', // Pass the desired 'OR' text here
                      ),
                    ),
                    const SizedBox(height: 5),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30, 15, 30, 0),
                      child: CustomButton1(
                        buttonText: 'Sign up',
                        icon: Icons.apple,
                         onPressed: () {
                         Navigator.push(
                           context,
                          MaterialPageRoute(builder: (context) => const SignupApp()),
                         );
                        // Handle button press here
                      },
                        buttonColor: const Color.fromARGB(255, 219, 219, 219),
                        label: '',
                        textStyle: const TextStyle(
                          color: Color.fromARGB(255, 7, 7, 7),
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
void main() {
  runApp(const MaterialApp(
    home: LoginPage(),
  ));
}