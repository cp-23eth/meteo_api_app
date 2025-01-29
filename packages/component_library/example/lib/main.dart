import 'package:component_library/component_library.dart';
import 'package:domain_entities/domain_entites.dart';
import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const meteo = Meteo(latitude: 45.12, longitude: 56.23, timezone: 'Europe/Berlin', date: ['25-02-2025'], temperatureMax: [2.5], temperatureMin: [0.2]);

    return Storybook(stories: [
      Story(name: 'Widget/Meteo/1place', builder: (context) => MeteoCard(meteo: meteo,),)
    ]);
  }
}
