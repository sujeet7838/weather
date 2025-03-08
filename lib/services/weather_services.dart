import 'package:http/http.dart' as http;

class WeatherServices {
  final String apiKey = 'f05868d5510c367c64cc028f0a9225be';

  Future<String> featchWerther(String cityName) async {
    final url = Uri.parse(
      'https://api.openweathermap.org/data/2.5/weather?q=$cityName&appid=$apiKey',
    );

    final response = await http.get(url);

    if (response.statusCode == 200) {
      return response.body;
    } else {
      throw Exception('Failed to load weather data');
    }
  }
}
