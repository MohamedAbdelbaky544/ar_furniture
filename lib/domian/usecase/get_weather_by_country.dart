import 'package:weather/domian/entities/weather.dart';
import 'package:weather/domian/repository/base_weather_repository.dart';

class GetWeatherByCountry {
  final BaseWeatherRepository repository;

  GetWeatherByCountry(this.repository);

  Future<Weather> execute(String cityName) async {
    return await repository.getWeatherByCityName(cityName);
  }
}
