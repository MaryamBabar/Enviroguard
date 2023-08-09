import 'package:flutter/material.dart';

void main() {
  runApp(const PestPage());
}

class PestPage extends StatefulWidget {
  const PestPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _PestPageState createState() => _PestPageState();
}

class _PestPageState extends State<PestPage> {
  List<String> selectedImages = [];

  // List of background colors for circular icons
  List<Color> circularIconColors = [
    const Color.fromARGB(255, 246, 182, 166),
    const Color.fromARGB(255, 185, 243, 187),
    const Color.fromARGB(255, 123, 166, 124),
    const Color.fromARGB(255, 251, 219, 217),
    const Color.fromARGB(255, 250, 202, 106),
    const Color.fromARGB(255, 229, 205, 96),
    const Color.fromARGB(255, 253, 222, 111),
    const Color.fromARGB(255, 224, 103, 103),
  ];

  void _showAddImagesDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Select Images'),
          content: SizedBox(
            width: 300,
            height: 300,
            child: ListView(
              children: [
                _buildImageTile(
                    'lib/assets/images/pestpage images/Chili.png', 'Chilli',),
                    
                    
                _buildImageTile(
                    'lib/assets/images/pestpage images/Cucumber.png',
                    'Cucumber'),
                _buildImageTile(
                    'lib/assets/images/pestpage images/Broccoli.png',
                    'Broccoli'),
                _buildImageTile(
                    'lib/assets/images/pestpage images/Garlic.png', 'Garlic'),
                _buildImageTile(
                    'lib/assets/images/pestpage images/Ginger.png', 'Ginger'),
                _buildImageTile(
                    'lib/assets/images/pestpage images/Soya.png', 'Soya Beans'),
                _buildImageTile(
                    'lib/assets/images/pestpage images/Turmeric.png',
                    'Turmeric'),
                _buildImageTile(
                    'lib/assets/images/pestpage images/Tomato.png', 'Tomato'),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildImageTile(String imagePath, String name) {
    bool isSelected = selectedImages.contains(imagePath);
    return ListTile(
      onTap: () {
        setState(() {
          if (!isSelected) {
            // Check if the image is not already selected before adding it
            if (!selectedImages.contains(imagePath) &&
                selectedImages.length < 6) {
              selectedImages.add(imagePath);
            } else {
              // Handle the case when the image is already selected or the list size is 8
              // You can show a snackbar or an alert to inform the user about the condition.
              // For simplicity, let's print a debug message here.
              ("You can select this image only once, and the maximum limit is 6 images.");
            }
          } else {
            selectedImages.remove(imagePath);
          }
        });
      },
      title: Text(name),
      leading: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.grey.withOpacity(0.3),
        ),
        child: Center(
          child: isSelected
              ? const Icon(Icons.check, color: Colors.green)
              : Image.asset(imagePath, width: 24, height: 24),
        ),
      ),
    );
  }

  Widget _buildCircularIcon(String imagePath, Color backgroundColor) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: backgroundColor,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            imagePath,
            width: 55,
            height: 55,
          ),
        ),
      ),
    );
  }

  // Helper method to build the container with a logo and text
  Widget _buildLogoContainer(String logoImagePath, String text) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.all(8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 140,
            height: 90,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey.withOpacity(0.3),
            ),
            child: Center(
              child: Image.asset(
                logoImagePath,
                width: 30,
                height: 30,
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            text,
            style: const TextStyle(fontSize: 14),
          ),
        ],
      ),
    );
  }



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Pest Detection'),
        ),
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Text at the top of the page
                  const Padding(
                    padding: EdgeInsets.fromLTRB(16, 16, 16, 8),
                    child: Text(
                      'Select Crops',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  // Small description text
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      'Select up to 6 crops you are interested in.',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  // Line under the text
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Divider(
                      color: Color.fromARGB(255, 255, 255, 255),
                      thickness: 1,
                    ),
                  ),
                  // Horizontal list with icons
                  SizedBox(
                    height: 60,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: selectedImages.asMap().entries.map((entry) {
                        int index = entry.key;
                        String imagePath = entry.value;
                        return _buildCircularIcon(
                            imagePath, circularIconColors[index]);
                      }).toList(),
                    ),
                  ),
                  // Add a row with two containers and logos
                  Container(
                    color: const Color.fromARGB(255, 210, 248, 196),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 16),
                      child: Row(
                        children: [
                          _buildLogoContainer(
                              'lib/assets/images/pestpage images/virus.png',
                              'Fertilizer\nCalculator'),
                          const SizedBox(width: 16),
                          _buildLogoContainer(
                              'lib/assets/images/pestpage images/fertilizer.png',
                              'Pests &\nDisease'),
                        ],
                      ),
                    ),
                  ),
                 
                  
                ],
              ),
            ),
            Positioned(
              top: 0,
              right: 0,
              child: FloatingActionButton(
                onPressed: () {
                  _showAddImagesDialog(context);
                },
                backgroundColor: const Color.fromARGB(255, 76, 174, 71),
                child: const Icon(Icons.add),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
