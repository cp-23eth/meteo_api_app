import 'package:domain_entities/domain_entites.dart';
import 'package:flutter/material.dart';

class MeteoDesign extends StatelessWidget {
  const MeteoDesign({required this.meteo, super.key});

  final Meteo meteo;

  String cleanValue(dynamic value) {
    // Convertit en chaîne et supprime les crochets si présents
    return value.toString().replaceAll(RegExp(r'^\[|\]$'), '');
  }

  @override
  Widget build(BuildContext context) {
    String temperatureMax = cleanValue(meteo.temperatureMax);
    String temperatureMin = cleanValue(meteo.temperatureMin);
    String date = cleanValue(meteo.date);

    IconData? icon = null;

    if (meteo.weatherCode == 1) {
      icon = Icons.sunny;
    } else if (meteo.weatherCode == 2 ||
        meteo.weatherCode == 3 ||
        meteo.weatherCode == 8 ||
        meteo.weatherCode == 9 ||
        meteo.weatherCode == 11) {
      icon = Icons.cloud_queue_rounded; // faut mettre un nuage + soleil
    } else if (meteo.weatherCode == 4) {
      icon = Icons.cloud;
    } else if (meteo.weatherCode == 5 ||
        meteo.weatherCode == 6 ||
        meteo.weatherCode == 15) {
      icon = Icons.cloudy_snowing; // faut mettre de la pluie
    } else if (meteo.weatherCode == 7 || meteo.weatherCode == 13) {
      icon = Icons.cloudy_snowing;
    } else if (meteo.weatherCode == 10) {
      icon = Icons.cloud; // weather mix
    } else if (meteo.weatherCode == 12) {
      icon = Icons.foggy;
    } else if (meteo.weatherCode == 14 || meteo.weatherCode == 15) {
      icon = Icons.thunderstorm;
    }
    else {
      icon = Icons.help_outlined;
    }

    return Container(
      color: const Color(0xFFfefae0),
      child: Padding(
        padding:
            const EdgeInsets.only(left: 16, right: 16, top: 50, bottom: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(
              icon,
              size: 65,
              color: Colors.grey[700],
            ),
            Text(
              meteo.temperature.toString() + '°C',
              style: TextStyle(
                fontSize: 65,
                fontWeight: FontWeight.bold,
                color: Colors.grey[700],
              ),
            ),
            const SizedBox(height: 24),
            Text(
              date,
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.grey[500],
              ),
            ),
            const SizedBox(height: 30),
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                gradient: const LinearGradient(
                  colors: [
                    Color(0xFF00AEEF),
                    Color(0xFFFF3D00)
                  ], // Dégradé bleu clair → rouge
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.3),
                    blurRadius: 8,
                    spreadRadius: 2,
                    offset: const Offset(2, 4),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      const Icon(
                        Icons.thermostat,
                        color: Colors.blue,
                        size: 30,
                      ),
                      const SizedBox(height: 8),
                      Text(
                        temperatureMin + '°C',
                        style: const TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ],
                  ),
                  Container(
                    // barre de séparation
                    width: 2,
                    height: 70,
                    color: Colors.white24,
                  ),
                  Column(
                    children: [
                      const Icon(Icons.thermostat, color: Colors.red, size: 30),
                      const SizedBox(height: 8),
                      Text(
                        temperatureMax + '°C',
                        style: const TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            Column(
              children: [
                Text(
                  "Latitude : " + meteo.latitude.toString(),
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[500]),
                ),
                const SizedBox(height: 8),
                Text(
                  "Longitude : " + meteo.longitude.toString(),
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[500]),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
