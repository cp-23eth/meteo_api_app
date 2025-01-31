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

    return Container(
      color: Colors.lightBlue[100],
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 50, bottom: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: const Color(0xFF303A52), // Bleu profond
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    date,
                    style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    '-',
                    style: TextStyle(fontSize: 22, color: Colors.white),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    meteo.timezone,
                    style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ],
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
                        size: 50,
                      ),
                      const SizedBox(height: 8),
                      Text(
                        temperatureMin + '°C',
                        style: const TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ],
                  ),
                  Container(
                    width: 2,
                    height: 70,
                    color: Colors.white24,
                  ),
                  Column(
                    children: [
                      const Icon(Icons.thermostat,
                          color: Colors.red, size: 50), 
                      const SizedBox(height: 8),
                      Text(
                        temperatureMax + '°C',
                        style: const TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: const Color(0xFF303A52), // Même couleur que la carte date
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.3),
                    blurRadius: 8,
                    spreadRadius: 2,
                    offset: const Offset(2, 4),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Text(
                    "Latitude : " + meteo.latitude.toString(),
                    style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "Longitude : " + meteo.longitude.toString(),
                    style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
