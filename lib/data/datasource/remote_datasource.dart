import 'package:weather/data/models/weather_model.dart';
import 'package:dio/dio.dart';

import '../../core/utils/constants.dart';

abstract class BaseRemoteDataSource {
  Future<WeatherModel?> getWeatherbyCityName(String cityName);
}

class RemoteDataSource implements BaseRemoteDataSource {
  @override
  Future<WeatherModel?> getWeatherbyCityName(String cityName) async {
    try {
      var response = await Dio().get(
          '${AppConstant.baseUrl}/weather?q=$cityName&appid=${AppConstant.appKey}');
      print(response);
      return WeatherModel.fromJson(response.data);
    } catch (e) {
      print(e);
      return null;
    }
  }
}
