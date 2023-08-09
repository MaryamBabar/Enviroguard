import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

void main() => runApp(const MaterialApp(home: BottomNavBar()));

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _page = 0;
  final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        index: 0,
        height: 60.0,
        items: const <Widget>[
          Icon(Icons.home, size: 30),
          Icon(Icons.flag,size: 30),
          
          
          Icon(Icons.perm_identity, size: 30),
        ],
        color: Colors.white,
        buttonBackgroundColor: Colors.white,
        backgroundColor: const Color.fromARGB(255, 126, 184, 119),
        animationCurve: Curves.easeInOut,
        animationDuration: const Duration(milliseconds: 600),
        onTap: (index) {
          setState(() {
            _page = index;
          });
        },
        letIndexChange: (index) => true,
      ),
      body: IndexedStack(
        index: _page,
        children: <Widget>[
          // Container for Page 0
          Container(
            color: Colors.blueAccent, // Change this color as desired
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text('Page 0', textScaleFactor: 3.0),
                  ElevatedButton(
                    child: const Text('Go To Page of index 1'),
                    onPressed: () {
                      final CurvedNavigationBarState? navBarState =
                          _bottomNavigationKey.currentState;
                      navBarState?.setPage(1);
                    },
                  )
                ],
              ),
            ),
          ),
          // Container for Page 1
          Container(
            color: Colors.orangeAccent, // Change this color as desired
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Page 1', textScaleFactor: 3.0),
                ],
              ),
            ),
          ),
          // Container for Page 2
          // Container(
          //   color: Colors.greenAccent, // Change this color as desired
          //   child: const Center(
          //     child: Column(
          //       mainAxisAlignment: MainAxisAlignment.center,
          //       children: <Widget>[
          //         Text('Page 2', textScaleFactor: 3.0),
          //       ],
          //     ),
          //   ),
          // ),
          // // Container for Page 3
          // Container(
          //   color: Colors.redAccent, // Change this color as desired
          //   child: const Center(
          //     child: Column(
          //       mainAxisAlignment: MainAxisAlignment.center,
          //       children: <Widget>[
          //         Text('Page 3', textScaleFactor: 3.0),
          //       ],
          //     ),
          //   ),
          // ),
          // Container for Page 4
          Container(
            color: Colors.purpleAccent, // Change this color as desired
            child:  Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  // Text('Page 4', textScaleFactor: 3.0),
                  Expanded(
                    child: ProfilePage(), // Add the ProfilePage widget here
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 168, 213, 147),
      appBar: AppBar(
        title: const Text('Profile Page',style: TextStyle(color: Colors.black),),
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        actions: [
          IconButton(
            alignment: Alignment.topLeft,
            icon: Image.asset('lib/assets/images/left.png'), // You can change the icon as desired
            onPressed: () {
              // Add your onPressed action here, if needed
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Avatar Image Box
            Container(
              padding: const EdgeInsets.all(20.0),
              alignment: Alignment.center,
              child: Column(
                children: [
                  const CircleAvatar(
                    radius: 50.0,
                    backgroundImage: AssetImage('lib/assets/images/avatar.png'),
                  ),
                  const SizedBox(height: 10.0),
                  const Text(
                    'Maryam',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                  // Sign In Button
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10.0),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const JoinPage(),
                          ),
                        );
                        // Handle button press here

                        // Add the sign-in functionality here
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        side: const BorderSide(color: Colors.green, width: 2.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        fixedSize: const Size(260.0, 40.0),
                      ),
                      child: const Text(
                        'Sign In',
                        style: TextStyle(
                          color: Color.fromARGB(255, 76, 175, 80),
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // List of Containers
            Container(
              color: const Color.fromARGB(255, 168, 213, 147),
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color.fromARGB(0, 255, 255, 255)),
                      color: const Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: _buildListItem(
                      logo: 'lib/assets/images/plant.png',
                      text: 'Grow smart together!',
                      description:
                          'Share Enviroguard and help farmers solve their plant problems.',
                      linkText: 'Share Enviroguard',
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  Container(
                    padding: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color.fromARGB(0, 255, 255, 255)),
                      color: const Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: _buildListItem(
                      logo: 'lib/assets/images/chat (1).png',
                      text: 'How is your experience with Enviroguard App?',
                      description:
                          "we'd love to hear your thoughts and suggestions.",
                      linkText: 'Give Feedback',
                      onTap: () => _showFeedbackDialog(context),
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  Container(
                    padding: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color.fromARGB(0, 255, 255, 255)),
                      color: const Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: _buildListItem(
                      logo: 'lib/assets/images/bell.png',
                      text: 'Your Plant Needs Attention',
                      description:
                          'Green Thumb Alerts: Time to Tend to Your Plants!',
                      linkText: 'Notification',
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

  Widget _buildListItem({
    required String logo,
    required String text,
    required String description,
    required String linkText,
    VoidCallback? onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.transparent),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Row(
          children: [
            Image.asset(
              logo,
              width: 50.0,
              height: 50.0,
            ),
            const SizedBox(width: 10.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    text,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                    ),
                  ),
                  const SizedBox(height: 5.0),
                  Text(
                    description,
                  ),
                  const SizedBox(height: 5.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Container(),
                      ),
                      Text(
                        linkText,
                        style: const TextStyle(
                          color: Color.fromARGB(255, 64, 151, 69),
                          fontWeight: FontWeight.bold,
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
    );
  }

  void _showFeedbackDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          title: const Text('How is your experience with our App?'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildEmojiFeedback(
                    'lib/assets/images/sad (1).png',
                    'Bad',
                  ),
                  _buildEmojiFeedback(
                    'lib/assets/images/confused.png',
                    'Average',
                  ),
                  _buildEmojiFeedback(
                    'lib/assets/images/happy (2).png',
                    'Good',
                  ),
                ],
              ),
              const SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  // Implement submit functionality here
                  Navigator.pop(context); // Close the dialog
                },
                child: const Text('Submit'),
              ),
              const SizedBox(height: 10.0),
              TextButton(
                onPressed: () {
                  Navigator.pop(context); // Close the dialog
                },
                child: const Text('Cancel'),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildEmojiFeedback(String emojiPath, String text) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.grey),
          ),
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            emojiPath,
            width: 50.0,
            height: 50.0,
          ),
        ),
        const SizedBox(height: 8.0),
        Text(text),
      ],
    );
  }
}

class JoinPage extends StatelessWidget {
  const JoinPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Join Page'),
      ),
      body: const Center(
        child: Text('This is the Join Page'),
      ),
    );
  }
}
