import 'package:domain_entities/domain_entites.dart';
import 'package:flutter/material.dart';

class MeteoCard extends StatelessWidget {
  const MeteoCard({required this.meteo, super.key});

  final Meteo meteo;

  @override
  Widget build(BuildContext context) {
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
          const Text(
            'Date: 2025-01-28',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
          const Row(
            children: [
              Icon(Icons.thermostat, color: Colors.red),
              SizedBox(width: 8),
              Text(
                'Max Temp: 18°C',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
            ],
          ),
          const Row(
            children: [
              Icon(Icons.thermostat, color: Colors.blue),
              SizedBox(width: 8),
              Text(
                'Min Temp: 5°C',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
