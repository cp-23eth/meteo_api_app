import 'package:example/component_library.dart';
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
    return Storybook(stories: [
      Story(name: 'Widget/Meteo/1place', builder: (context) => Meteo1Place(),)
    ]);
  }
}
