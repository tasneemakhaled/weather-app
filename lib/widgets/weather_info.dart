import 'package:flutter/material.dart';
import 'package:weather_app/models/weather_model.dart';

class WeatherInfoBody extends StatelessWidget {
  const WeatherInfoBody({super.key, required this.weatherModel});
  final WeatherModel weatherModel;
  @override
  Widget build(BuildContext context) {
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
              child: Image.network(
                  fit: BoxFit.fill,
                  'https://img.pikbest.com/png-images/qiantu/cartoon-stick-white-cloud-blue-raindrop-weather-cloud-vector-hand-drawn-elements_2571535.png!sw800'),
            ),
            Text('17'),
            Column(
              children: [
                Text('Max Temp : 17'),
                Text('Min Temp :10'),
              ],
            )
          ],
        ),
        Text('Light Rain'),
      ],
    );
  }
}
