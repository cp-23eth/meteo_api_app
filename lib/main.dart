import 'package:flutter/material.dart';
import 'package:meteo_list/meteo_list.dart';
import 'package:meteo_repository/meteo_repository.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<MeteoRemoteStorage>(
          create: (context) => MeteoRemoteStorage(),
        ),
        Provider<MeteoRepository>(
          create: (context) => MeteoRepository(
            storage: context.read<MeteoRemoteStorage>(),
          ),
        ),
        ChangeNotifierProvider<MeteoListProvider>(
          create: (context) => MeteoListProvider(
            repository: context.read<MeteoRepository>(),
          ),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'MeteoApp',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurpleAccent),
          useMaterial3: true,
        ),
        home: HomeScreen(),
      ),
    );
  }
}
