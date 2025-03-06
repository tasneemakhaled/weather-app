import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/cubit/get_weather_cubit.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search a City'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Center(
          child: TextField(
            onSubmitted: (value) async {
              BlocProvider.of<GetWeatherCubit>(context)
                  .getWeather(cityName: value);
              //  WeatherModel weatherModel = await WeatherService(dio: Dio())
              //       .getCurrentWeather(cityName: value);
              //Navigator.pop(context);
              // log(weatherModel!.cityName);
            },
            decoration: InputDecoration(
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 16, vertical: 32),
              suffixIcon: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.search),
              ),
              border: OutlineInputBorder(),
              hintText: 'Enter City Name',
              labelText: 'Search',
            ),
          ),
        ),
      ),
    );
  }
}

//global variable
// WeatherModel? weatherModel;
