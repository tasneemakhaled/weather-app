import 'package:dio/dio.dart';
import 'package:weather_app/models/weather_model.dart';

class WeatherService {
  final Dio dio;
  final String baseUrl = 'http://api.weatherapi.com/v1';
  final String apiKey = '11a4603114524911acd154955241608';
  WeatherService({required this.dio});
  Future<WeatherModel> getCurrentWeather({required String cityName}) async {
    // try {
    try {
      Response response = await dio.get(
          '$baseUrl/forecast.json?key=$apiKey&q=$cityName&days=1&aqi=no&alerts=no');
      WeatherModel weatherModel = WeatherModel.fromJson(response.data);
      return weatherModel;
    } on DioException catch (e) {
      final String errorMessage = e.response?.data['error']['message'] ??
          'there was an error pls try later';
      throw Exception(errorMessage);
    } catch (e) {
      throw Exception('try later');
    }

    // if (response.statusCode == 200) {

    // } else {
    //   final String errorMesaage = response.data['error']['message'];
    //   throw Exception(errorMesaage);
    // }
    // } on Exception catch (e) {
    //   return null;
  }
}
