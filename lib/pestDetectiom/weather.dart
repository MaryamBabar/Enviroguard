import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class WeatherPage extends StatefulWidget {
  const WeatherPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _WeatherPageState createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  final String apiKey = 'YOUR_OPENWEATHERMAP_API_KEY'; // Replace with your API key
  String location = 'Your Current Location';
  String currentWeather = '';
  List<String> forecastWeather = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    getLocationWeather();
  }

  Future<void> getLocationWeather() async {
    // Implement your location retrieval logic here (e.g., using geolocation package)
    // For this example, we'll assume you already have the location latitude and longitude.
    double latitude = 37.7749; // Replace with your latitude
    double longitude = -122.4194; // Replace with your longitude

    final weatherUrl = 'https://api.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longitude&appid=$apiKey';
    final forecastUrl = 'https://api.openweathermap.org/data/2.5/forecast?lat=$latitude&lon=$longitude&appid=$apiKey';

    // Fetch current weather
    final currentWeatherResponse = await http.get(Uri.parse(weatherUrl));
    final currentWeatherData = json.decode(currentWeatherResponse.body);
    setState(() {
      currentWeather = currentWeatherData['weather'][0]['description'];
    });

    // Fetch weather forecast for the next 4 days
    final forecastResponse = await http.get(Uri.parse(forecastUrl));
    final forecastData = json.decode(forecastResponse.body);
    final List<dynamic> forecastList = forecastData['list'];
    List<String> forecast = [];
    for (var forecastItem in forecastList) {
      forecast.add(forecastItem['weather'][0]['description']);
    }
    setState(() {
      forecastWeather = forecast.take(4).toList();
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather Update'),
      ),
      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          : Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 20),
                Text(
                  'Location: $location',
                  style: const TextStyle(fontSize: 20),
                ),
                const SizedBox(height: 10),
                Text(
                  'Current Weather: $currentWeather',
                  style: const TextStyle(fontSize: 18),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Weather Forecast for Next 4 Days:',
                  style: TextStyle(fontSize: 18),
                ),
                for (String forecast in forecastWeather)
                  Text(
                    forecast,
                    style: const TextStyle(fontSize: 16),
                  ),
              ],
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Implement location change logic here (e.g., using a dialog to input a new location)
          // For this example, we'll just change the location to "New Location".
          setState(() {
            location = 'New Location';
            isLoading = true;
          });
          getLocationWeather();
        },
        child: const Icon(Icons.location_on),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: WeatherPage(),
  ));
}
