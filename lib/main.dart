import 'package:flutter/material.dart';
import 'package:weather/data/datasource/remote_datasource.dart';
import 'package:weather/data/repository/weater_repository.dart';
import 'package:weather/domian/entities/weather.dart';
import 'package:weather/domian/repository/base_weather_repository.dart';
import 'package:weather/domian/usecase/get_weather_by_country.dart';

void main() async {
  BaseRemoteDataSource baseremoteDataSource = RemoteDataSource();
  BaseWeatherRepository baseWeatherRepository =
      WeatherRepostory(baseremoteDataSource);
  Weather weather =
      await GetWeatherByCountry(baseWeatherRepository).execute("Port Said");
  print(weather);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      // home: const MainVeiw(),
    );
  }
}
