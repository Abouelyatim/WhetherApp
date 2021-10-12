import 'dart:convert';

import 'package:weather_app/data/data_provider/weather_api.dart';
import 'package:weather_app/data/models/city.dart';
import 'package:weather_app/data/models/weather_model.dart';
import 'package:http/http.dart' as http;

class WeatherRepository {
  final WeatherApi openWeatherAPI;
  late City myCity;
  WeatherRepository(this.openWeatherAPI);

  Future<WeatherModel> attemptGetCityWeather(String ville) async {
    http.Response geoResponse = await openWeatherAPI.getLatLong(ville);
    if (geoResponse.statusCode == 200) {
      if (geoResponse.body.length == 2) throw Exception('Failed to load geoLoc');
      myCity = City.fromJson(jsonDecode(geoResponse.body)[0]);
    } else {
      throw Exception('no location');
    }

    http.Response response = await openWeatherAPI.getWeather(myCity.lat, myCity.lon);
    if (response.statusCode == 200) {
      return WeatherModel.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('no weather');
    }
  }
}
