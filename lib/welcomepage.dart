import 'package:final_project/auth/login_page.dart';
import 'package:flutter/material.dart';

import 'package:swipeable_page_route/swipeable_page_route.dart';
import '../../component/simplebutton.dart';
void main() => runApp(const MyApp());
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
          child: PageViewDemo(),
        ),
      ),
    );
  }
}
class PageViewDemo extends StatefulWidget {
  const PageViewDemo({Key? key}) : super(key: key);
  @override
  State<PageViewDemo> createState() => _PageViewDemoState();
}
class _PageViewDemoState extends State<PageViewDemo> {
  final _controller = PageController(
    initialPage: 0,
  );
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _controller,
      children: const [
        MyPage1Widget(),
        MyPage2Widget(),
        MyPage3Widget(),
        MyPage4Widget(),
      ],
    );
  }
}
class MyPage1Widget extends StatelessWidget {
  const MyPage1Widget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(250),
        child: AppBar(
          elevation: 0.0,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: const Text(''),
          flexibleSpace: Container(
            height: 306,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('lib/assets/images/farm-man-working-his-organic-lettuce-garden.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
      body: Container(
        color: const Color.fromARGB(255, 255, 255, 255), // Set the background color here
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 8.0, bottom: 16),
                child: Text(
                  'welcome to',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              const Text(
                'ENVIROGUARD',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 17, 17, 17),
                ),
              ),
              const Flexible(
                child: Padding(
                  padding: EdgeInsets.only(top: 8.0, left: 50, bottom: 16),
                  child: Text(
                    'Discover a smarter way to safeguard your crops.Enviroguard is an advanced app designed to empower farmers.',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Color.fromARGB(255, 158, 158, 158),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 15, 30, 0),
                child: Column(
                  children: [
                    CustomButton1(
                      buttonText: 'NEXT',
                      icon: Icons.apple,
                     onPressed: () {
                        Navigator.push<void>(
                          context,
                          SwipeablePageRoute(
                            builder: (_) => const MyPage2Widget(),
                          ),
                        );
                      },
                      buttonColor: const Color.fromARGB(255, 107, 190, 107),
                      label: '',
                      textStyle: const TextStyle(
                        color: Color.fromARGB(255, 7, 7, 7),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                        height:
                            10), // Add some spacing between the button and the indicator
                    // Circle indicator tab
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 10,
                          height: 10,
                          margin: const EdgeInsets.all(5),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color:
                                Colors.green, // Replace with the desired color
                          ),
                        ),
                        Container(
                          width: 10,
                          height: 10,
                          margin: const EdgeInsets.all(5),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color:
                                Colors.grey, // Replace with the desired color
                          ),
                        ),
                        Container(
                          width: 10,
                          height: 10,
                          margin: const EdgeInsets.all(5),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color:
                                Colors.grey, // Replace with the desired color
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
class MyPage2Widget extends StatelessWidget {
  const MyPage2Widget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(250),
        child: AppBar(
          elevation: 0.0,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: const Text(''),
          flexibleSpace: Container(
            height: 306,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('lib/assets/images/woman-working-alone-sustainable-greenhouse.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
      body: Container(
        color: Colors.white, // Set the background color here
        child: SizedBox.expand(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 8.0, bottom: 16),
                child: Text(
                  'Your Crops, Just a Tap Away',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              const Text(
                'REAL-TIME CROP MONITORING',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 17, 17, 17),
                ),
              ),
              const Flexible(
                child: Padding(
                  padding: EdgeInsets.only(top: 8.0, left: 30, right: 30),
                  child: Text(
                    'Stay connected with your fields like never before. CropGuard provides real-time monitoring of your crops, giving you valuable insights into their health and growth.',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Color.fromARGB(255, 158, 158, 158),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 15, 30, 0),
                child: Column(
                  children: [
                    CustomButton1(
                      buttonText: 'NEXT',
                      icon: Icons.apple,
                      onPressed: () {
                        Navigator.push<void>(
                          context,
                          SwipeablePageRoute(
                            builder: (_) => const MyPage3Widget(),
                          ),
                        );
                      },
                      buttonColor: const Color.fromARGB(255, 107, 190, 107),
                      label: '',
                      textStyle: const TextStyle(
                        color: Color.fromARGB(255, 7, 7, 7),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                        height:
                            10), // Add some spacing between the button and the indicator
                    // Circle indicator tab
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 10,
                          height: 10,
                          margin: const EdgeInsets.all(5),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color:
                                Colors.grey, // Replace with the desired color
                          ),
                        ),
                        Container(
                          width: 10,
                          height: 10,
                          margin: const EdgeInsets.all(5),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color:
                                Colors.green, // Replace with the desired color
                          ),
                        ),
                        Container(
                          width: 10,
                          height: 10,
                          margin: const EdgeInsets.all(5),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color:
                                Colors.grey, // Replace with the desired color
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
class MyPage3Widget extends StatelessWidget {
  const MyPage3Widget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(250),
        child: AppBar(
          elevation: 0.0,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: const Text(''),
          flexibleSpace: Container(
            height: 306,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('lib/assets/images/zoe-schaeffer-D_VjFp1ds1Y-unsplash.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
      body: Container(
        color: Colors.white, // Set the background color here
        child: SizedBox.expand(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 8.0, bottom: 16),
                child: Text(
                  'Driven by Excellence',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              const Text(
                'INTELLIGENT DIESASE DETECTION',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 17, 17, 17),
                ),
              ),
              const Flexible(
                child: Padding(
                  padding: EdgeInsets.only(top: 8.0, left: 30, right: 30),
                  child: Text(
                    'Detect crop diseases early with our intelligent AI system. CropGuard analyzes plant symptoms, identifies potential threats, and offers personalized solutions to combat diseases effectively.',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Color.fromARGB(255, 158, 158, 158),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 15, 30, 0),
                child: Column(
                  children: [
                    CustomButton1(
                      buttonText: 'NEXT',
                      icon: Icons.apple,
                      onPressed: () {
                        Navigator.push<void>(
                          context,
                          SwipeablePageRoute(
                            builder: (_) => const MyPage4Widget(),
                          ),
                        );
                      },
                      buttonColor: const Color.fromARGB(255, 107, 190, 107),
                      label: '',
                      textStyle: const TextStyle(
                        color: Color.fromARGB(255, 7, 7, 7),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                        height:
                            10), // Add some spacing between the button and the indicator
                    // Circle indicator tab
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 10,
                          height: 10,
                          margin: const EdgeInsets.all(5),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color:
                                Colors.grey, // Replace with the desired color
                          ),
                        ),
                        Container(
                          width: 10,
                          height: 10,
                          margin: const EdgeInsets.all(5),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color:
                                Colors.green, // Replace with the desired color
                          ),
                        ),
                        Container(
                          width: 10,
                          height: 10,
                          margin: const EdgeInsets.all(5),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color:
                                Colors.grey, // Replace with the desired color
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
class MyPage4Widget extends StatelessWidget {
  const MyPage4Widget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: PreferredSize(
      preferredSize: const Size.fromHeight(250),
      child: AppBar(
        elevation: 0.0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(''),
        flexibleSpace: Container(
          height: 306,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('lib/assets/images/markus-spiske-bk11wZwb9F4-unsplash.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    ),
    body: Container(
      color: const Color.fromARGB(255, 255, 255, 255), // Set the background color here
      child: SizedBox.expand(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 8.0, bottom: 16),
              child: Text(
                'Growing Greener Together',
                style: TextStyle(fontSize: 16),
              ),
            ),
            const Text(
              'CULTIVATE SUSTAINABILITY',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 17, 17, 17),
              ),
            ),
            const Flexible(
              child: Padding(
                padding: EdgeInsets.only(top: 8.0, left: 30, right: 30),
                child: Text(
                  'With CropGuard, you"re not just protecting crops; you"re cultivating sustainability. Join our community of forward-thinking farmers who strive to create a greener and more resilient agricultural landscape.',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Color.fromARGB(255, 158, 158, 158),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 15, 30, 0),
              child: Column(
                children: [
                  CustomButton1(
                    buttonText: 'CREATE ACCOUNT',
                    icon: Icons.apple,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const LoginPage()),
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
                  const SizedBox(
                      height:
                          10), // Add some spacing between the button and the indicator
                  // Circle indicator tab
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 10,
                        height: 10,
                        margin: const EdgeInsets.all(5),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color:
                              Colors.grey, // Replace with the desired color
                        ),
                      ),
                      Container(
                        width: 10,
                        height: 10,
                        margin: const EdgeInsets.all(5),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color:
                              Colors.grey, // Replace with the desired color
                        ),
                      ),
                      Container(
                        width: 10,
                        height: 10,
                        margin: const EdgeInsets.all(5),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color:
                              Color.fromRGBO(76, 175, 80, 1), // Replace with the desired color
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
  }
}
const lightBlue = Color(0xff00bbff);
const mediumBlue = Color(0xff00a2fc);
const darkBlue = Color(0xff0075c9);
final lightGreen = Colors.green.shade300;
final mediumGreen = Colors.green.shade600;
final darkGreen = Colors.green.shade900;
final lightRed = Colors.red.shade300;
final mediumRed = Colors.red.shade600;
final darkRed = Colors.red.shade900;
class MyBox extends StatelessWidget {
  final Color color;
  final double? height;
  final String? text;
  const MyBox(this.color, {Key? key, this.height, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(10),
        color: color,
        height: (height == null) ? 150 : height,
        child: (text == null)
            ? null
            : Center(
                child: Text(
                  text!,
                  style: const TextStyle(
                    fontSize: 50,
                    color: Colors.white,
                  ),
                ),
              ),
      ),
    );
  }
}












