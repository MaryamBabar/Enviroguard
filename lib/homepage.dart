import 'package:final_project/profile/home.dart';
import 'package:final_project/welcomepage.dart';
import 'package:flutter/material.dart';

import '../../component/simplebutton.dart';
class Frontpage extends StatelessWidget {
  const Frontpage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'lib/assets/images/lawrence-kayku-ZVKr8wADhpc-unsplash.jpg', // Replace with your image path
              
              fit: BoxFit.cover,
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(20, 40, 0, 0),
            margin: const EdgeInsets.all(5),
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(80, 15, 80, 0),
                  child: SizedBox(
                    width: 50, // Specify the width here
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const HomeApp()),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.white.withOpacity(1),
                        ),
                        padding: const EdgeInsets.fromLTRB(20, 8, 8, 8),
                        child: Row(
                          children: [
                            Image.asset(
                              'lib/assets/images/4.png', // Replace with your image path
                              width: 30,
                              height: 30,
                            ),
                            const SizedBox(width: 10),
                            const Text(
                              'ENVIROGUARD',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 400),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 15, 30, 0),
                  child: CustomButton1(
                    buttonText: 'GET STARTRED',
                    icon: Icons.apple,
                    onPressed: () {
                       Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const MyApp()),
                      );
                       //Handle button press here
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}









