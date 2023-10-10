import 'package:weather/data/datasource/remote_datasource.dart';
import 'package:weather/domian/entities/weather.dart';
import 'package:weather/domian/repository/base_weather_repository.dart';

class WeatherRepostory implements BaseWeatherRepository {
  final BaseRemoteDataSource baseremoteDataSource;

  WeatherRepostory(this.baseremoteDataSource);

  @override
  Future<Weather> getWeatherByCityName(String cityName) async {
    return (await baseremoteDataSource.getWeatherbyCityName(cityName))!;
  }
}
