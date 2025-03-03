import 'package:dio/dio.dart';
import 'package:weather_app/models/weather_model.dart';

class WeatherService {
  final Dio dio;

  WeatherService({required this.dio});
  Future<WeatherModel> getCurrentWeather({required String cityName}) async {
    Response response = await dio.get(
        'http://api.weatherapi.com/v1/forecast.json?key=11a4603114524911acd154955241608&q=London&days=1&aqi=no&alerts=no');
    WeatherModel weatherModel = WeatherModel.fromJson(response.data);
    return weatherModel;
  }
}
