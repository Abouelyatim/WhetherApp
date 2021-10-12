part of 'weather_bloc.dart';

@immutable
abstract class WeatherState {
  String city = "";
}

class None extends WeatherState {}

class WeatherValidLoading extends WeatherState {
  WeatherModel weather;

  WeatherValidLoading(this.weather);
}

class WeatherErrorLoading extends WeatherState {}
