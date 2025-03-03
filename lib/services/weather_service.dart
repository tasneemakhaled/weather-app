import 'package:dio/dio.dart';
import 'package:weather_app/models/weather_model.dart';

class WeatherService {
  final Dio dio;
  final String baseUrl = 'http://api.weatherapi.com/v1';
  WeatherService({required this.dio});
  Future<WeatherModel> getCurrentWeather({required String cityName}) async {
    Response response = await dio.get(
        '$baseUrl/forecast.json?key=11a4603114524911acd154955241608&q=$cityName&days=1&aqi=no&alerts=no');
    WeatherModel weatherModel = WeatherModel.fromJson(response.data);
    return weatherModel;
  }
}
