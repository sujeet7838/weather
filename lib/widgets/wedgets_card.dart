import 'package:flutter/material.dart';
import 'package:weather/models/weather_model.dart';

class WeatherCard extends StatelessWidget {
  final Weather weather;
  const WeatherCard({super.key, required this.weather});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.all(16),
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(color: Colors.white),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                weather.cityName,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              Text(weather.description, style: const TextStyle(fontSize: 16)),
              const SizedBox(height: 16),
              Text(
                '${weather.temperature}°C',
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
