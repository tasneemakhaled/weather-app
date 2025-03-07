import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/services/weather_service.dart';

part 'get_weather_state.dart';

class GetWeatherCubit extends Cubit<GetWeatherState> {
  GetWeatherCubit() : super(NoWeatherState());
  getWeather({required String cityName}) async {
    try {
      WeatherModel weatherModel = await WeatherService(dio: Dio())
          .getCurrentWeather(cityName: cityName);
      emit(WeatherLoadedState());
      // return weatherModel;
    } on Exception catch (e) {
      emit(WeatherFailureState());
    }
  }
}
