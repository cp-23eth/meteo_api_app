import 'package:flutter/material.dart';

class TestDesign extends StatelessWidget {
  const TestDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1A1B2F), // Fond bleu nuit moderne
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // 📅 Date & Fuseau Horaire
              Container(
                padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color(0xFF303A52), // Bleu profond
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha : 0.3),
                      blurRadius: 8,
                      spreadRadius: 2,
                      offset: Offset(2, 4),
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '25.02.2008',
                      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    SizedBox(width: 10),
                    Text(
                      '-',
                      style: TextStyle(fontSize: 22, color: Colors.white),
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Europe/Berlin',
                      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 30),

              // 🌡️ Températures avec icônes de thermomètre
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  gradient: LinearGradient(
                    colors: [Color(0xFF00AEEF), Color(0xFFFF3D00)], // Dégradé bleu clair → rouge
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha : 0.3),
                      blurRadius: 8,
                      spreadRadius: 2,
                      offset: Offset(2, 4),
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Icon(Icons.thermostat, color: Colors.blue, size: 50), // 🔵 Thermomètre bleu
                        SizedBox(height: 8),
                        Text(
                          '-1.2°C',
                          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.white),
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
                        Icon(Icons.thermostat, color: Colors.red, size: 50), // 🔴 Thermomètre rouge
                        SizedBox(height: 8),
                        Text(
                          '8.7°C',
                          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              SizedBox(height: 30),

              // 🗺️ Coordonnées Géographiques
              Container(
                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color(0xFF303A52), // Même couleur que la carte date
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha : 0.3),
                      blurRadius: 8,
                      spreadRadius: 2,
                      offset: Offset(2, 4),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Text(
                      "Latitude : 12.3456789",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "Longitude : 12.3456789",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
