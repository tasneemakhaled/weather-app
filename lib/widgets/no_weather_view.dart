import 'package:flutter/material.dart';

class NoWeatherBody extends StatelessWidget {
  const NoWeatherBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'There is no weather Start',
            style: TextStyle(fontSize: 24),
          ),
          Text(
            ' searching now',
            style: TextStyle(fontSize: 24),
          ),
        ],
      ),
    );
  }
}
