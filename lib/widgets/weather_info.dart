import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/cubit/get_weather_cubit.dart';
import 'package:weather_app/models/weather_model.dart';

class WeatherInfoBody extends StatelessWidget {
  const WeatherInfoBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var weatherModel = BlocProvider.of<GetWeatherCubit>(context).weatherModel;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          weatherModel.cityName,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Text('updated at 23:47'),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 100,
              child: Image.network(fit: BoxFit.fill, weatherModel.image),
            ),
            Text(weatherModel.temp.toString()),
            Column(
              children: [
                Text('max_temp : {$weatherModel.maxTemp.round()}'),
                Text('min_temp : {$weatherModel.minTemp.round()}'),
              ],
            )
          ],
        ),
        Text(
          weatherModel.status,
        ),
      ],
    );
  }
}
