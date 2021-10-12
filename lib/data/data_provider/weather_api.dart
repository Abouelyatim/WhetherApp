import 'package:http/http.dart' as http;

class WeatherApi {
  Future<http.Response> getWeather(double lat, double long) async {
      http.Response response = await http.get(Uri.parse(
        "https://api.openweathermap.org/data/2.5/onecall?lat=$lat&lon=$long&exclude=hourly,minutely&appid=21e3ea89847c12f0787af922ba752399&cnt=5&units=metric"));
    return response;
  }

  Future<http.Response> getLatLong(String city) async {
    http.Response response = await http.get(Uri.parse(
        "http://api.openweathermap.org/geo/1.0/direct?q=$city&limit=5&appid=21e3ea89847c12f0787af922ba752399&cnt=5&units=metric"));
    return response;
  }
}
