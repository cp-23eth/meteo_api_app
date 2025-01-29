import 'package:flutter/material.dart';

class Meteo1Place extends StatelessWidget {
  const Meteo1Place({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.lightBlue[100],
        borderRadius: BorderRadius.circular(16.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withValues(alpha: 0.5),
            blurRadius: 10,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Latitude: 48.20',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
          Text(
            'Longitude: 16.37',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
          Text(
            'Timezone: Europe/Berlin',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
          Text(
            'Date: 2025-01-28',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
          Row(
            children: [
              Icon(Icons.thermostat, color: Colors.red),
              SizedBox(width: 8),
              Text(
                'Max Temp: 18°C',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
            ],
          ),
          Row(
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
