part of 'get_weather_cubit.dart';

@immutable
sealed class GetWeatherState {}

final class GetWeatherInitial extends GetWeatherState {}

final class NoWeatherState extends GetWeatherState {}

final class WeatherLoadedState extends GetWeatherState {}

final class WeatherFailureState extends GetWeatherState {}
