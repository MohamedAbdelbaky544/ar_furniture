import 'package:weather/domian/entities/weather.dart';

class WeatherModel extends Weather {
  WeatherModel(
    super.id,
    super.main,
    super.description,
    super.preasure,
    super.cityName,
  );
  factory WeatherModel.fromJson(Map<String, dynamic> json) => WeatherModel(
      json['id'],
      json['weather'][0]['main'],
      json['weather'][0]['description'],
      json['main']['pressure'],
      json['name']);
}
