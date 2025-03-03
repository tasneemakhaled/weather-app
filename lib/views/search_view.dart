import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/services/weather_service.dart';

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
              weatherModel = await WeatherService(dio: Dio())
                  .getCurrentWeather(cityName: value);
              Navigator.pop(context);
              log(weatherModel!.cityName);
            },
            decoration: InputDecoration(
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 16, vertical: 32),
              suffixIcon: Icon(Icons.search),
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
WeatherModel? weatherModel;
