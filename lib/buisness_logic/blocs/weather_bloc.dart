import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:weather_app/data/data_provider/weather_api.dart';
import 'package:weather_app/data/models/weather_model.dart';
import 'package:weather_app/data/repositories/weather_repository.dart';

part 'weather_event.dart';
part 'weather_state.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  WeatherRepository weatherRepository = WeatherRepository(WeatherApi());
  WeatherBloc() : super(None()) {}

  @override
  Stream<WeatherState> mapEventToState(WeatherEvent event) async* {
    if (event is GetWeatherEvent) {
      try {
        WeatherModel weatherModel = await weatherRepository.attemptGetCityWeather(event._city);
        yield WeatherValidLoading(weatherModel);
      } catch (e) {
        yield WeatherErrorLoading();
        print(e);
      }
    } else {
      yield None();
    }
  }
}
