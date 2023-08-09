

import 'package:final_project/FieldBoundary/boundary.dart';
import 'package:final_project/harvestMonitoring/harvest.dart';
import 'package:final_project/pestDetectiom/pest.dart';
import 'package:final_project/yieldPrediction/yield.dart';
import 'package:flutter/material.dart';



void main() {
  runApp(const HomeApp());
}

class HomeApp extends StatelessWidget {
  const HomeApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHome(),
    );
  }
}

class MyHome extends StatelessWidget {
  final String userName = "Maryam";

  const MyHome({super.key}) ;

 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   title: const Text("MyHome"),
      // ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Text(
                "Hello $userName!",
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                hintText: "Search...",
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
            const SizedBox(height: 16),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: const Color.fromARGB(255, 190, 237, 143),
              ),
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            'lib/assets/images/weather-app.png',
                            width: 35,
                            height: 35,
                          ),
                          const SizedBox(width: 8),
                          const Text(
                            "Temperature:",
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                        ],
                      ),
                      const Text(
                        "28°C",
                        style: TextStyle(
                            fontSize: 35,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Highest:",
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                          Text(
                            "32°C", // Replace with the highest temperature value
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Lowest:",
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                          Text(
                            "20°C", // Replace with the lowest temperature value
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Divider(color: Colors.white),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Humidity:",
                            style: TextStyle(fontSize: 12, color: Colors.white),
                          ),
                          Text(
                            "65%", // Replace with humidity value
                            style: TextStyle(fontSize: 10, color: Colors.black),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Precipitation:",
                            style: TextStyle(fontSize: 12, color: Colors.white),
                          ),
                          Text(
                            "10%", // Replace with precipitation value
                            style: TextStyle(fontSize: 10, color: Colors.black),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Wind:",
                            style: TextStyle(fontSize: 12, color: Colors.white),
                          ),
                          Text(
                            "10%", // Replace with precipitation value
                            style: TextStyle(fontSize: 10, color: Colors.black),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Pressure:",
                            style: TextStyle(fontSize: 12, color: Colors.white),
                          ),
                          Text(
                            "10%", // Replace with precipitation value
                            style: TextStyle(fontSize: 10, color: Colors.black),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                ],
              ),
            ),
            const SizedBox(height: 16),
            const Divider(height: 1, color: Colors.grey),
            const SizedBox(height: 16),
            Expanded(
              child: ListView(
                children: [
                  Card(
                    color: const Color.fromARGB(255, 218, 250, 143),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 70,
                            height: 70,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color.fromARGB(255, 199, 253, 37),
                            ),
                            child: GestureDetector(
                              onTap: () {
                                // Add your onTap logic here
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>  const YieldPage()),
                                );
                              },
                              child: Image.asset(
                                'lib/assets/images/predictive.png',
                                width: 50,
                                height: 50,
                              ),
                            ),
                            // child: Image.asset(
                            //   'lib/assets/images/predictive.png',
                            //   width: 50,
                            //   height: 50,
                            // ),
                          ),
                          const SizedBox(height: 16),
                          const Text(
                            "Yield Prediction",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 8),
                          const Text(
                            " Empower your farming decisions with our advanced Yield Prediction service.",
                            style: TextStyle(
                              fontSize: 13,
                              color: Color.fromARGB(255, 169, 169, 169),
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Card(
                    color: const Color.fromARGB(255, 218, 250, 143),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 70,
                            height: 70,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color.fromARGB(255, 199, 253, 37),
                            ),
                             child: GestureDetector(
                              onTap: () {
                                // Add your onTap logic here
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>  const BoundaryPage()),
                                );
                              },
                              child: Image.asset(
                                'lib/assets/images/categorization.png',
                                width: 50,
                                height: 50,
                              ),
                            ),
                         
                          ),
                          const SizedBox(height: 16),
                          const Text(
                            "Crop Type Classification",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 8),
                          const Text(
                            " Identify your crops with ease using our Crop Type Classification service. ",
                            style: TextStyle(
                              fontSize: 13,
                              color: Color.fromARGB(255, 169, 169, 169),
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Card(
                    color: const Color.fromARGB(255, 218, 250, 143),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 70,
                            height: 70,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color.fromARGB(255, 199, 253, 37),
                            ),
                             child: GestureDetector(
                              onTap: () {
                                // Add your onTap logic here
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>  const BoundaryPage()),
                                );
                              },
                              child: Image.asset(
                                'lib/assets/images/vectors (2).png',
                                width: 50,
                                height: 50,
                              ),
                            ),
                            // child: Image.asset(
                            //   'lib/assets/images/vectors (2).png',
                            //   width: 50,
                            //   height: 50,
                            // ),
                          ),
                          const SizedBox(height: 16),
                          const Text(
                            "Field Boundary Detection",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 8),
                          const Text(
                            "Define the boundaries of your fields effortlessly with our Field Boundary Detection service.",
                            style: TextStyle(
                              fontSize: 13,
                              color: Color.fromARGB(255, 169, 169, 169),
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Card(
                    color: const Color.fromARGB(255, 218, 250, 143),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 70,
                            height: 70,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color.fromARGB(255, 199, 253, 37),
                            ),
                            child: GestureDetector(
                              onTap: () {
                                // Add your onTap logic here
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>  const HarvestPage()),
                                );
                              },
                              child: Image.asset(
                                'lib/assets/images/wheat (1).png',
                                width: 50,
                                height: 50,
                              ),
                            ),
                          ),
                          const SizedBox(height: 16),
                          const Text(
                            "Remote Harvest Dynamic Monitoring",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 8),
                          const Text(
                            "Stay connected to your crops from anywhere with our Remote Harvest Dynamic Monitoring service.",
                            style: TextStyle(
                              fontSize: 13,
                              color: Color.fromARGB(255, 169, 169, 169),
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Card(
                    color: const Color.fromARGB(255, 218, 250, 143),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 70,
                            height: 70,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color.fromARGB(255, 199, 253, 37),
                            ),
                            child: GestureDetector(
                              onTap: () {
                                // Add your onTap logic here
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>  const PestPage()),
                                );
                              },
                              child: Image.asset(
                                'lib/assets/images/pest (1).png',
                                width: 50,
                                height: 50,
                              ),
                            ),
                            
                           
                          ),
                          const SizedBox(height: 16),
                          const Text(
                            "Pest Detection",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 8),
                          const Text(
                            "Safeguard your crops with our proactive Pest Detection service.",
                            style: TextStyle(
                              fontSize: 13,
                              color: Color.fromARGB(255, 169, 169, 169),
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
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
