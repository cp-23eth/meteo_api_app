import 'package:domain_entities/domain_entites.dart';
import 'package:flutter/material.dart';

class MeteoCard extends StatelessWidget {
  const MeteoCard({required this.meteo, super.key});

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
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.lightBlue[100],
        borderRadius: BorderRadius.circular(16.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withValues(alpha: 0.5),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Latitude : ${meteo.latitude}',
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
          Text(
            'Longitude: ${meteo.longitude}',
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
          Text(
            'Timezone: ${meteo.timezone}',
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
          Text(
            'Date: $date',
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
          Row(
            children: [
              const Icon(Icons.thermostat, color: Colors.red),
              const SizedBox(width: 8),
              Text(
                'Max Temp: $temperatureMax°C',
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
            ],
          ),
          Row(
            children: [
              const Icon(Icons.thermostat, color: Colors.blue),
              const SizedBox(width: 8),
              Text(
                'Min Temp: $temperatureMin°C',
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
