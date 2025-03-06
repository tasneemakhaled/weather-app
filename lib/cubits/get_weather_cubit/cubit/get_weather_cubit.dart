import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/services/weather_service.dart';

part 'get_weather_state.dart';

class GetWeatherCubit extends Cubit<GetWeatherState> {
  GetWeatherCubit() : super(GetWeatherInitial());
  Future<WeatherModel> getWeather({required String cityName}) async {
    WeatherModel weatherModel =
        await WeatherService(dio: Dio()).getCurrentWeather(cityName: cityName);
    return weatherModel;
  }
}
