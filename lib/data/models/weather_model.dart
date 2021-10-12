class WeatherModel {
  late double lat;
  late double lon;
  late String timezone;
  late int timezoneOffset;
  late Current current;
  late List<Daily> daily;

  WeatherModel(this.lat, this.lon, this.timezone, this.timezoneOffset,
      this.current, this.daily);

  WeatherModel.fromJson(Map<String, dynamic> json) {
    lat = json['lat'] == null ? 0.0 : json['lat'].toDouble();
    lon = json['lon'] == null ? 0.0 : json['lon'].toDouble();
    timezone = json['timezone'] == null ? "none" : json['timezone'];
    timezoneOffset =
        json['timezone_offset'] == null ? 0 : json['timezone_offset'].toInt();
    current = (json['current'] != null
        ? new Current.fromJson(json['current'])
        : null)!;
    if (json['daily'] != null) {
      daily = [];
      json['daily'].forEach((v) {
        daily.add(new Daily.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['lat'] = this.lat;
    data['lon'] = this.lon;
    data['timezone'] = this.timezone;
    data['timezone_offset'] = this.timezoneOffset;
    if (this.current != null) {
      data['current'] = this.current.toJson();
    }
    if (this.daily != null) {
      data['daily'] = this.daily.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Current {
  late int dt;
  late int sunrise;
  late int sunset;
  late double temp;
  late double feelsLike;
  late int pressure;
  late int humidity;
  late double dewPoint;
  late int uvi;
  late int clouds;
  late int visibility;
  late double windSpeed;
  late int windDeg;
  late double windGust;
  late List<Weather> weather;

  Current(
      this.dt,
      this.sunrise,
      this.sunset,
      this.temp,
      this.feelsLike,
      this.pressure,
      this.humidity,
      this.dewPoint,
      this.uvi,
      this.clouds,
      this.visibility,
      this.windSpeed,
      this.windDeg,
      this.windGust,
      this.weather);

  Current.fromJson(Map<String, dynamic> json) {
    dt = json['dt'] == null ? 0 : json['dt'].toInt();
    sunrise = json['sunrise'] == null ? 0 : json['sunrise'].toInt();
    sunset = json['sunset'] == null ? 0 : json['sunset'].toInt();
    temp = json['temp'] == null ? 0.0 : json['temp'].toDouble();
    feelsLike =
        json['feels_like'] == null ? 0.0 : json['feels_like'].toDouble();
    pressure = json['pressure'] == null ? 0 : json['pressure'].toInt();
    humidity = json['humidity'] == null ? 0 : json['humidity'].toInt();
    dewPoint = json['dew_point'] == null ? 0.0 : json['dew_point'].toDouble();
    uvi = json['uvi'] == null ? 0 : json['uvi'].toInt();
    clouds = json['clouds'] == null ? 0 : json['clouds'].toInt();
    visibility = json['visibility'] == null ? 0 : json['visibility'].toInt();
    windSpeed =
        json['wind_speed'] == null ? 0.0 : json['wind_speed'].toDouble();
    windDeg = json['wind_deg'] == null ? 0 : json['wind_deg'].toInt();
    windGust = json['wind_gust'] == null ? 0.0 : json['wind_gust'].toDouble();
    if (json['weather'] != null) {
      weather = [];
      json['weather'].forEach((v) {
        weather.add(new Weather.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['dt'] = this.dt;
    data['sunrise'] = this.sunrise;
    data['sunset'] = this.sunset;
    data['temp'] = this.temp;
    data['feels_like'] = this.feelsLike;
    data['pressure'] = this.pressure;
    data['humidity'] = this.humidity;
    data['dew_point'] = this.dewPoint;
    data['uvi'] = this.uvi;
    data['clouds'] = this.clouds;
    data['visibility'] = this.visibility;
    data['wind_speed'] = this.windSpeed;
    data['wind_deg'] = this.windDeg;
    data['wind_gust'] = this.windGust;
    if (this.weather != null) {
      data['weather'] = this.weather.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Weather {
  late int id;
  late String main;
  late String description;
  late String icon;

  Weather(this.id, this.main, this.description, this.icon);

  Weather.fromJson(Map<String, dynamic> json) {
    id = json['id'] == null ? 0 : json['id'].toInt();
    main = json['main'] == null ? "none" : json['main'];
    description = json['description'] == null ? "none" : json['description'];
    icon = json['icon'] == null ? "none" : json['icon'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['main'] = this.main;
    data['description'] = this.description;
    data['icon'] = this.icon;
    return data;
  }
}

class Daily {
  late int dt;
  late int sunrise;
  late int sunset;
  late int moonrise;
  late int moonset;
  late double moonPhase;
  late Temp temp;
  late FeelsLike feelsLike;
  late int pressure;
  late int humidity;
  late double dewPoint;
  late double windSpeed;
  late int windDeg;
  late double windGust;
  late List<Weather> weather;
  late int clouds;
  late double pop;
  late double uvi;
  late double rain;

  Daily(
      this.dt,
      this.sunrise,
      this.sunset,
      this.moonrise,
      this.moonset,
      this.moonPhase,
      this.temp,
      this.feelsLike,
      this.pressure,
      this.humidity,
      this.dewPoint,
      this.windSpeed,
      this.windDeg,
      this.windGust,
      this.weather,
      this.clouds,
      this.pop,
      this.uvi,
      this.rain);

  Daily.fromJson(Map<String, dynamic> json) {
    dt = json['dt'] == null ? 0 : json['dt'].toInt();
    sunrise = json['sunrise'] == null ? 0 : json['sunrise'].toInt();
    sunset = json['sunset'] == null ? 0 : json['sunset'].toInt();
    moonrise = json['moonrise'] == null ? 0 : json['moonrise'].toInt();
    moonset = json['moonset'] == null ? 0 : json['moonset'].toInt();
    moonPhase =
        json['moon_phase'] == null ? 0.0 : json['moon_phase'].toDouble();
    temp = (json['temp'] != null ? new Temp.fromJson(json['temp']) : null)!;
    feelsLike = (json['feels_like'] != null
        ? new FeelsLike.fromJson(json['feels_like'])
        : null)!;
    pressure = json['pressure'] == null ? 0 : json['pressure'].toInt();
    humidity = json['humidity'] == null ? 0 : json['humidity'].toInt();
    dewPoint = json['dew_point'] == null ? 0.0 : json['dt'].toDouble();
    windSpeed =
        json['wind_speed'] == null ? 0.0 : json['wind_speed'].toDouble();
    windDeg = json['wind_deg'] == null ? 0 : json['wind_deg'].toInt();
    windGust = json['wind_gust'] == null ? 0.0 : json['wind_gust'].toDouble();
    if (json['weather'] != null) {
      weather = [];
      json['weather'].forEach((v) {
        weather.add(new Weather.fromJson(v));
      });
    }

    clouds = json['clouds'] == null ? 0 : json['clouds'].toInt();

    pop = json['pop'] == null ? 0.0 : json['pop'].toDouble();
    uvi = json['uvi'] == null ? 0.0 : json['uvi'].toDouble();
    rain = json['rain'] == null ? 0.0 : json['rain'].toDouble();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['dt'] = this.dt;
    data['sunrise'] = this.sunrise;
    data['sunset'] = this.sunset;
    data['moonrise'] = this.moonrise;
    data['moonset'] = this.moonset;
    data['moon_phase'] = this.moonPhase;
    if (this.temp != null) {
      data['temp'] = this.temp.toJson();
    }
    if (this.feelsLike != null) {
      data['feels_like'] = this.feelsLike.toJson();
    }
    data['pressure'] = this.pressure;
    data['humidity'] = this.humidity;
    data['dew_point'] = this.dewPoint;
    data['wind_speed'] = this.windSpeed;
    data['wind_deg'] = this.windDeg;
    data['wind_gust'] = this.windGust;
    if (this.weather != null) {
      data['weather'] = this.weather.map((v) => v.toJson()).toList();
    }
    data['clouds'] = this.clouds;
    data['pop'] = this.pop;
    data['uvi'] = this.uvi;
    data['rain'] = this.rain;
    return data;
  }
}

class Temp {
  late double day;
  late double min;
  late double max;
  late double night;
  late double eve;
  late double morn;

  Temp(this.day, this.min, this.max, this.night, this.eve, this.morn);

  Temp.fromJson(Map<String, dynamic> json) {
    day = json['day'] == null ? 0.0 : json['day'].toDouble();
    min = json['min'] == null ? 0.0 : json['min'].toDouble();
    max = json['max'] == null ? 0.0 : json['max'].toDouble();
    night = json['night'] == null ? 0.0 : json['night'].toDouble();
    eve = json['eve'] == null ? 0.0 : json['eve'].toDouble();
    morn = json['morn'] == null ? 0.0 : json['morn'].toDouble();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['day'] = this.day;
    data['min'] = this.min;
    data['max'] = this.max;
    data['night'] = this.night;
    data['eve'] = this.eve;
    data['morn'] = this.morn;
    return data;
  }
}

class FeelsLike {
  late double day;
  late double night;
  late double eve;
  late double morn;

  FeelsLike(this.day, this.night, this.eve, this.morn);

  FeelsLike.fromJson(Map<String, dynamic> json) {
    day = json['day'] == null ? 0.0 : json['day'].toDouble();
    night = json['night'] == null ? 0.0 : json['night'].toDouble();
    eve = json['eve'] == null ? 0.0 : json['eve'].toDouble();
    morn = json['morn'] == null ? 0.0 : json['morn'].toDouble();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['day'] = this.day;
    data['night'] = this.night;
    data['eve'] = this.eve;
    data['morn'] = this.morn;
    return data;
  }
}
