import 'package:domain_entities/domain_entites.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class MeteoDesign extends StatelessWidget {
  const MeteoDesign({required this.meteo, super.key});

  final Meteo meteo;

  String cleanValue(dynamic value) {
    return value.toString().replaceAll(RegExp(r'^\[|\]$'), '');
  }

  @override
  Widget build(BuildContext context) {
    String temperatureMax = cleanValue(meteo.temperatureMax);
    String temperatureMin = cleanValue(meteo.temperatureMin);
    String date = cleanValue(meteo.date);

    Widget icon;
    String weatherType;

    if (meteo.weatherCode == 0) {
      icon = FaIcon(FontAwesomeIcons.circleQuestion,
          color: Colors.grey[700], size: 65);
      weatherType = "État non déterminé";
    } else if (meteo.weatherCode == 1) {
      icon = FaIcon(FontAwesomeIcons.sun, color: Colors.grey[700], size: 65);
      weatherType = "Ensoleillé";
    } else if (meteo.weatherCode == 2) {
      icon =
          FaIcon(FontAwesomeIcons.cloudSun, color: Colors.grey[700], size: 65);
      weatherType = "Peu nuageux";
    } else if (meteo.weatherCode == 3) {
      icon =
          FaIcon(FontAwesomeIcons.cloudSun, color: Colors.grey[700], size: 65);
      weatherType = "Partiellement nuageux";
    } else if (meteo.weatherCode == 4) {
      icon = FaIcon(FontAwesomeIcons.cloud, color: Colors.grey[700], size: 65);
      weatherType = "Nuageux";
    } else if (meteo.weatherCode == 5) {
      icon =
          FaIcon(FontAwesomeIcons.cloudRain, color: Colors.grey[700], size: 65);
      weatherType = "Pluie";
    } else if (meteo.weatherCode == 6) {
      icon =
          FaIcon(FontAwesomeIcons.cloudRain, color: Colors.grey[700], size: 65);
      weatherType = "Pluie et neige mêlées";
    } else if (meteo.weatherCode == 7) {
      icon =
          FaIcon(FontAwesomeIcons.snowflake, color: Colors.grey[700], size: 65);
      weatherType = "Neige";
    } else if (meteo.weatherCode == 8) {
      icon = FaIcon(FontAwesomeIcons.cloudShowersHeavy,
          color: Colors.grey[700], size: 65);
      weatherType = "Averses de pluie";
    } else if (meteo.weatherCode == 9) {
      icon =
          FaIcon(FontAwesomeIcons.snowflake, color: Colors.grey[700], size: 65);
      weatherType = "Averses de neige";
    } else if (meteo.weatherCode == 10) {
      icon =
          FaIcon(FontAwesomeIcons.cloudRain, color: Colors.grey[700], size: 65);
      weatherType = "Averses de verglas";
    } else if (meteo.weatherCode == 11) {
      icon = FaIcon(FontAwesomeIcons.smog, color: Colors.grey[700], size: 65);
      weatherType = "Brouillard léger";
    } else if (meteo.weatherCode == 12) {
      icon = FaIcon(FontAwesomeIcons.smog, color: Colors.grey[700], size: 65);
      weatherType = "Brouillard dense";
    } else if (meteo.weatherCode == 13) {
      icon =
          FaIcon(FontAwesomeIcons.cloudRain, color: Colors.grey[700], size: 65);
      weatherType = "Pluie verglaçante";
    } else if (meteo.weatherCode == 14) {
      icon = FaIcon(FontAwesomeIcons.bolt, color: Colors.grey[700], size: 65);
      weatherType = "Orages";
    } else if (meteo.weatherCode == 15) {
      icon =
          FaIcon(FontAwesomeIcons.cloudRain, color: Colors.grey[700], size: 65);
      weatherType = "Bruine";
    } else if (meteo.weatherCode == 16) {
      icon = FaIcon(FontAwesomeIcons.wind, color: Colors.grey[700], size: 65);
      weatherType = "Tempête de sable";
    } else if (meteo.weatherCode == 17) {
      icon = FaIcon(FontAwesomeIcons.bolt, color: Colors.grey[700], size: 65);
      weatherType = "Orage sans précipitations";
    } else if (meteo.weatherCode == 18) {
      icon = FaIcon(FontAwesomeIcons.wind, color: Colors.grey[700], size: 65);
      weatherType = "Rafales";
    } else if (meteo.weatherCode == 19) {
      icon =
          FaIcon(FontAwesomeIcons.tornado, color: Colors.grey[700], size: 65);
      weatherType = "Tornade";
    } else if (meteo.weatherCode == 20) {
      icon =
          FaIcon(FontAwesomeIcons.cloudRain, color: Colors.grey[700], size: 65);
      weatherType = "Bruine ou grains de neige";
    } else if (meteo.weatherCode == 21) {
      icon =
          FaIcon(FontAwesomeIcons.cloudRain, color: Colors.grey[700], size: 65);
      weatherType = "Pluie (non verglaçante)";
    } else if (meteo.weatherCode == 22) {
      icon =
          FaIcon(FontAwesomeIcons.snowflake, color: Colors.grey[700], size: 65);
      weatherType = "Neige";
    } else if (meteo.weatherCode == 23) {
      icon =
          FaIcon(FontAwesomeIcons.cloudRain, color: Colors.grey[700], size: 65);
      weatherType = "Pluie et neige ou granules de glace";
    } else if (meteo.weatherCode == 24) {
      icon =
          FaIcon(FontAwesomeIcons.cloudRain, color: Colors.grey[700], size: 65);
      weatherType = "Bruine verglaçante ou pluie verglaçante";
    } else if (meteo.weatherCode == 25) {
      icon = FaIcon(FontAwesomeIcons.cloudShowersHeavy,
          color: Colors.grey[700], size: 65);
      weatherType = "Averses de pluie";
    } else if (meteo.weatherCode == 26) {
      icon = FaIcon(FontAwesomeIcons.cloudShowersHeavy,
          color: Colors.grey[700], size: 65);
      weatherType = "Averses de neige ou de pluie et neige";
    } else if (meteo.weatherCode == 27) {
      icon = FaIcon(FontAwesomeIcons.cloudShowersHeavy,
          color: Colors.grey[700], size: 65); // Modifier l'icone si besoin
      weatherType = "Averses de grêle";
    } else if (meteo.weatherCode == 28) {
      icon = FaIcon(FontAwesomeIcons.smog, color: Colors.grey[700], size: 65);
      weatherType = "Brouillard givrant";
    } else if (meteo.weatherCode == 29) {
      icon = FaIcon(FontAwesomeIcons.bolt, color: Colors.grey[700], size: 65);
      weatherType = "Orage (avec ou sans précipitations)";
    } else if (meteo.weatherCode == 30) {
      icon = FaIcon(FontAwesomeIcons.wind, color: Colors.grey[700], size: 65);
      weatherType = "Tempête de sable légère/modérée, en diminution";
    } else if (meteo.weatherCode == 31) {
      icon = FaIcon(FontAwesomeIcons.wind, color: Colors.grey[700], size: 65);
      weatherType = "Tempête de sable légère/modérée, stable";
    } else if (meteo.weatherCode == 32) {
      icon = FaIcon(FontAwesomeIcons.wind, color: Colors.grey[700], size: 65);
      weatherType = "Tempête de sable légère/modérée, en augmentation";
    } else if (meteo.weatherCode == 33) {
      icon = FaIcon(FontAwesomeIcons.wind, color: Colors.grey[700], size: 65);
      weatherType = "Tempête de sable sévère, en diminution";
    } else if (meteo.weatherCode == 34) {
      icon = FaIcon(FontAwesomeIcons.wind, color: Colors.grey[700], size: 65);
      weatherType = "Tempête de sable sévère, stable";
    } else if (meteo.weatherCode == 35) {
      icon = FaIcon(FontAwesomeIcons.wind, color: Colors.grey[700], size: 65);
      weatherType = "Tempête de sable sévère, en augmentation";
    } else if (meteo.weatherCode == 36) {
      icon =
          FaIcon(FontAwesomeIcons.snowflake, color: Colors.grey[700], size: 65);
      weatherType = "Chute de neige faible à modérée, basse altitude";
    } else if (meteo.weatherCode == 37) {
      icon =
          FaIcon(FontAwesomeIcons.snowflake, color: Colors.grey[700], size: 65);
      weatherType = "Neige en vrac importante, basse altitude";
    } else if (meteo.weatherCode == 38) {
      icon =
          FaIcon(FontAwesomeIcons.snowflake, color: Colors.grey[700], size: 65);
      weatherType = "Chute de neige faible à modérée, haute altitude";
    } else if (meteo.weatherCode == 39) {
      icon =
          FaIcon(FontAwesomeIcons.snowflake, color: Colors.grey[700], size: 65);
      weatherType = "Neige en vrac importante, haute altitude";
    } else if (meteo.weatherCode == 40) {
      icon = FaIcon(FontAwesomeIcons.smog, color: Colors.grey[700], size: 65);
      weatherType = "Brouillard à distance";
    } else if (meteo.weatherCode == 41) {
      icon = FaIcon(FontAwesomeIcons.smog, color: Colors.grey[700], size: 65);
      weatherType = "Brouillard par endroits";
    } else if (meteo.weatherCode == 42) {
      icon = FaIcon(FontAwesomeIcons.smog, color: Colors.grey[700], size: 65);
      weatherType = "Brouillard, ciel visible, s'éclaircit";
    } else if (meteo.weatherCode == 43) {
      icon = FaIcon(FontAwesomeIcons.smog, color: Colors.grey[700], size: 65);
      weatherType = "Brouillard, ciel invisible, s'éclaircit";
    } else if (meteo.weatherCode == 44) {
      icon = FaIcon(FontAwesomeIcons.smog, color: Colors.grey[700], size: 65);
      weatherType = "Brouillard, ciel visible, stable";
    } else if (meteo.weatherCode == 45) {
      icon = FaIcon(FontAwesomeIcons.smog, color: Colors.grey[700], size: 65);
      weatherType = "Brouillard, ciel invisible, stable";
    } else if (meteo.weatherCode == 46) {
      icon = FaIcon(FontAwesomeIcons.smog, color: Colors.grey[700], size: 65);
      weatherType = "Brouillard, ciel visible, s'épaissit";
    } else if (meteo.weatherCode == 47) {
      icon = FaIcon(FontAwesomeIcons.smog, color: Colors.grey[700], size: 65);
      weatherType = "Brouillard, ciel invisible, s'épaissit";
    } else if (meteo.weatherCode == 48) {
      icon = FaIcon(FontAwesomeIcons.smog, color: Colors.grey[700], size: 65);
      weatherType = "Brouillard givrant, ciel visible";
    } else if (meteo.weatherCode == 49) {
      icon = FaIcon(FontAwesomeIcons.smog, color: Colors.grey[700], size: 65);
      weatherType = "Brouillard givrant, ciel invisible";
    } else if (meteo.weatherCode == 50) {
      icon =
          FaIcon(FontAwesomeIcons.cloudRain, color: Colors.grey[700], size: 65);
      weatherType = "Bruine, intermittente, légère";
    } else if (meteo.weatherCode == 51) {
      icon =
          FaIcon(FontAwesomeIcons.cloudRain, color: Colors.grey[700], size: 65);
      weatherType = "Bruine, continue, légère";
    } else if (meteo.weatherCode == 52) {
      icon =
          FaIcon(FontAwesomeIcons.cloudRain, color: Colors.grey[700], size: 65);
      weatherType = "Bruine, intermittente, modérée";
    } else if (meteo.weatherCode == 53) {
      icon =
          FaIcon(FontAwesomeIcons.cloudRain, color: Colors.grey[700], size: 65);
      weatherType = "Bruine, continue, modérée";
    } else if (meteo.weatherCode == 54) {
      icon =
          FaIcon(FontAwesomeIcons.cloudRain, color: Colors.grey[700], size: 65);
      weatherType = "Bruine, intermittente, forte";
    } else if (meteo.weatherCode == 55) {
      icon =
          FaIcon(FontAwesomeIcons.cloudRain, color: Colors.grey[700], size: 65);
      weatherType = "Bruine, continue, forte";
    } else if (meteo.weatherCode == 56) {
      icon =
          FaIcon(FontAwesomeIcons.cloudRain, color: Colors.grey[700], size: 65);
      weatherType = "Bruine verglaçante, légère";
    } else if (meteo.weatherCode == 57) {
      icon =
          FaIcon(FontAwesomeIcons.cloudRain, color: Colors.grey[700], size: 65);
      weatherType = "Bruine verglaçante, modérée ou forte";
    } else if (meteo.weatherCode == 58) {
      icon =
          FaIcon(FontAwesomeIcons.cloudRain, color: Colors.grey[700], size: 65);
      weatherType = "Bruine et pluie, légère";
    } else if (meteo.weatherCode == 59) {
      icon =
          FaIcon(FontAwesomeIcons.cloudRain, color: Colors.grey[700], size: 65);
      weatherType = "Bruine et pluie, modérée ou forte";
    } else if (meteo.weatherCode == 60) {
      icon =
          FaIcon(FontAwesomeIcons.cloudRain, color: Colors.grey[700], size: 65);
      weatherType = "Pluie, intermittente, légère";
    } else if (meteo.weatherCode == 61) {
      icon =
          FaIcon(FontAwesomeIcons.cloudRain, color: Colors.grey[700], size: 65);
      weatherType = "Pluie, continue, légère";
    } else if (meteo.weatherCode == 62) {
      icon =
          FaIcon(FontAwesomeIcons.cloudRain, color: Colors.grey[700], size: 65);
      weatherType = "Pluie, intermittente, modérée";
    } else if (meteo.weatherCode == 63) {
      icon =
          FaIcon(FontAwesomeIcons.cloudRain, color: Colors.grey[700], size: 65);
      weatherType = "Pluie, continue, modérée";
    } else if (meteo.weatherCode == 64) {
      icon =
          FaIcon(FontAwesomeIcons.cloudRain, color: Colors.grey[700], size: 65);
      weatherType = "Pluie, intermittente, forte";
    } else if (meteo.weatherCode == 65) {
      icon =
          FaIcon(FontAwesomeIcons.cloudRain, color: Colors.grey[700], size: 65);
      weatherType = "Pluie, continue, forte";
    } else if (meteo.weatherCode == 66) {
      icon =
          FaIcon(FontAwesomeIcons.cloudRain, color: Colors.grey[700], size: 65);
      weatherType = "Pluie verglaçante, légère";
    } else if (meteo.weatherCode == 67) {
      icon =
          FaIcon(FontAwesomeIcons.cloudRain, color: Colors.grey[700], size: 65);
      weatherType = "Pluie verglaçante, modérée ou forte";
    } else if (meteo.weatherCode == 68) {
      icon =
          FaIcon(FontAwesomeIcons.cloudRain, color: Colors.grey[700], size: 65);
      weatherType = "Pluie ou bruine mêlée de neige, légère";
    } else if (meteo.weatherCode == 69) {
      icon =
          FaIcon(FontAwesomeIcons.cloudRain, color: Colors.grey[700], size: 65);
      weatherType = "Pluie ou bruine mêlée de neige, modérée ou forte";
    } else if (meteo.weatherCode == 70) {
      icon =
          FaIcon(FontAwesomeIcons.snowflake, color: Colors.grey[700], size: 65);
      weatherType = "Chute intermittente de flocons de neige, légère";
    } else if (meteo.weatherCode == 71) {
      icon =
          FaIcon(FontAwesomeIcons.snowflake, color: Colors.grey[700], size: 65);
      weatherType = "Chute continue de flocons de neige, légère";
    } else if (meteo.weatherCode == 72) {
      icon =
          FaIcon(FontAwesomeIcons.snowflake, color: Colors.grey[700], size: 65);
      weatherType = "Chute intermittente de flocons de neige, modérée";
    } else if (meteo.weatherCode == 73) {
      icon =
          FaIcon(FontAwesomeIcons.snowflake, color: Colors.grey[700], size: 65);
      weatherType = "Chute continue de flocons de neige, modérée";
    } else if (meteo.weatherCode == 74) {
      icon =
          FaIcon(FontAwesomeIcons.snowflake, color: Colors.grey[700], size: 65);
      weatherType = "Chute intermittente de flocons de neige, forte";
    } else if (meteo.weatherCode == 75) {
      icon =
          FaIcon(FontAwesomeIcons.snowflake, color: Colors.grey[700], size: 65);
      weatherType = "Chute continue de flocons de neige, forte";
    } else if (meteo.weatherCode == 76) {
      icon =
          FaIcon(FontAwesomeIcons.snowflake, color: Colors.grey[700], size: 65);
      weatherType = "Poussière de diamant";
    } else if (meteo.weatherCode == 77) {
      icon =
          FaIcon(FontAwesomeIcons.snowflake, color: Colors.grey[700], size: 65);
      weatherType = "Grains de neige";
    } else if (meteo.weatherCode == 78) {
      icon =
          FaIcon(FontAwesomeIcons.snowflake, color: Colors.grey[700], size: 65);
      weatherType = "Cristaux de neige isolés";
    } else if (meteo.weatherCode == 79) {
      icon =
          FaIcon(FontAwesomeIcons.snowflake, color: Colors.grey[700], size: 65);
      weatherType = "Grésil ou granules de glace";
    } else if (meteo.weatherCode == 80) {
      icon = FaIcon(FontAwesomeIcons.cloudShowersHeavy,
          color: Colors.grey[700], size: 65);
      weatherType = "Averses de pluie, légères";
    } else if (meteo.weatherCode == 81) {
      icon = FaIcon(FontAwesomeIcons.cloudShowersHeavy,
          color: Colors.grey[700], size: 65);
      weatherType = "Averses de pluie, modérées ou fortes";
    } else if (meteo.weatherCode == 82) {
      icon = FaIcon(FontAwesomeIcons.cloudShowersHeavy,
          color: Colors.grey[700], size: 65);
      weatherType = "Averses de pluie, violentes";
    } else if (meteo.weatherCode == 83) {
      icon = FaIcon(FontAwesomeIcons.cloudShowersHeavy,
          color: Colors.grey[700], size: 65);
      weatherType = "Averses de pluie et neige mélangées, légères";
    } else if (meteo.weatherCode == 84) {
      icon = FaIcon(FontAwesomeIcons.cloudShowersHeavy,
          color: Colors.grey[700], size: 65);
      weatherType = "Averses de pluie et neige mélangées, modérées ou fortes";
    } else if (meteo.weatherCode == 85) {
      icon =
          FaIcon(FontAwesomeIcons.snowflake, color: Colors.grey[700], size: 65);
      weatherType = "Averses de neige, légères";
    } else if (meteo.weatherCode == 86) {
      icon =
          FaIcon(FontAwesomeIcons.snowflake, color: Colors.grey[700], size: 65);
      weatherType = "Averses de neige, modérées ou fortes";
    } else if (meteo.weatherCode == 87) {
      icon =
          FaIcon(FontAwesomeIcons.snowflake, color: Colors.grey[700], size: 65);
      weatherType = "Averses de granules de neige ou petite grêle, légères";
    } else if (meteo.weatherCode == 88) {
      icon =
          FaIcon(FontAwesomeIcons.snowflake, color: Colors.grey[700], size: 65);
      weatherType =
          "Averses de granules de neige ou petite grêle, modérées ou fortes";
    } else if (meteo.weatherCode == 89) {
      icon =
          FaIcon(FontAwesomeIcons.cloudRain, color: Colors.grey[700], size: 65);
      weatherType = "Averses de grêle, légères";
    } else if (meteo.weatherCode == 90) {
      icon = FaIcon(FontAwesomeIcons.cloudShowersHeavy,
          color: Colors.grey[700], size: 65);
      weatherType = "Averses de grêle, modérées ou fortes";
    } else if (meteo.weatherCode == 91) {
      icon =
          FaIcon(FontAwesomeIcons.cloudRain, color: Colors.grey[700], size: 65);
      weatherType = "Pluie légère, orage antérieur";
    } else if (meteo.weatherCode == 92) {
      icon =
          FaIcon(FontAwesomeIcons.cloudRain, color: Colors.grey[700], size: 65);
      weatherType = "Pluie modérée ou forte, orage antérieur";
    } else if (meteo.weatherCode == 93) {
      icon =
          FaIcon(FontAwesomeIcons.snowflake, color: Colors.grey[700], size: 65);
      weatherType = "Neige légère ou mélange, orage antérieur";
    } else if (meteo.weatherCode == 94) {
      icon =
          FaIcon(FontAwesomeIcons.snowflake, color: Colors.grey[700], size: 65);
      weatherType = "Neige modérée ou forte, orage antérieur";
    } else if (meteo.weatherCode == 95) {
      icon = FaIcon(FontAwesomeIcons.bolt, color: Colors.grey[700], size: 65);
      weatherType = "Orage, léger ou modéré, sans grêle";
    } else if (meteo.weatherCode == 96) {
      icon = FaIcon(FontAwesomeIcons.bolt, color: Colors.grey[700], size: 65);
      weatherType = "Orage, léger ou modéré, avec grêle";
    } else if (meteo.weatherCode == 97) {
      icon = FaIcon(FontAwesomeIcons.bolt, color: Colors.grey[700], size: 65);
      weatherType = "Orage, fort, sans grêle";
    } else if (meteo.weatherCode == 98) {
      icon = FaIcon(FontAwesomeIcons.bolt, color: Colors.grey[700], size: 65);
      weatherType = "Orage combiné à une tempête de poussière ou de sable";
    } else if (meteo.weatherCode == 99) {
      icon = FaIcon(FontAwesomeIcons.bolt, color: Colors.grey[700], size: 65);
      weatherType = "Orage, fort, avec grêle";
    } else {
      // Par défaut ou code inconnu
      icon = FaIcon(FontAwesomeIcons.circleQuestion,
          color: Colors.grey[700], size: 65);
      weatherType = "État non déterminé";
    }

    return Container(
      color: const Color(0x88F7ECE1),
      child: SingleChildScrollView(
        child: Padding(
          padding:
              const EdgeInsets.only(left: 16, top: 50, right: 16, bottom: 16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              icon,
              Text(
                '${meteo.temperature}°C',
                style: GoogleFonts.merriweather(
                  fontSize: 75,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[700],
                ),
              ),
              const SizedBox(height: 24),
              Text(
                date,
                style: GoogleFonts.merriweather(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[500],
                ),
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    gradient: const LinearGradient(
                      colors: [
                        Color(0xFF00AEEF),
                        Color(0xFFFF3D00),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withValues(alpha: 0.18),
                        offset: const Offset(3, 2),
                        blurRadius: 8,
                        spreadRadius: 2,
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
                            '$temperatureMin°C',
                            style: GoogleFonts.merriweather(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
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
                          const Icon(
                            Icons.thermostat,
                            color: Colors.red,
                            size: 30,
                          ),
                          const SizedBox(height: 8),
                          Text(
                            '$temperatureMax°C',
                            style: GoogleFonts.merriweather(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withValues(alpha: 0.18),
                        blurRadius: 8,
                        spreadRadius: 2,
                        offset: const Offset(3, 2),
                      ),
                    ],
                  ),
                  child: GridView.count(
                    crossAxisCount: 2,
                    shrinkWrap: true,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                    childAspectRatio: 1,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(12),
                        height: 50,
                        decoration: BoxDecoration(
                          color: const Color(0xFFF7F7F7),
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withValues(alpha: 0.1),
                              blurRadius: 4,
                              spreadRadius: 1,
                              offset: const Offset(2, 2),
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            const Icon(
                              Icons.water_drop,
                              size: 20,
                              color: Colors.blueAccent,
                            ),
                            const SizedBox(height: 8),
                            Text(
                              "Humidité",
                              style: GoogleFonts.merriweather(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey[700],
                              ),
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(height: 4),
                            Text(
                              '${meteo.relativeHumidity}%',
                              style: GoogleFonts.merriweather(
                                fontSize: 12,
                                color: Colors.grey[600],
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: const Color(0xFFF7F7F7),
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withValues(alpha: 0.1),
                              blurRadius: 4,
                              spreadRadius: 1,
                              offset: const Offset(2, 2),
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.sunny,
                              size: 20,
                              color: Colors.orange,
                            ),
                            const SizedBox(height: 8),
                            Text(
                              'Type de temps',
                              style: GoogleFonts.merriweather(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey[700],
                              ),
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(height: 4),
                            Text(
                              weatherType,
                              style: GoogleFonts.merriweather(
                                fontSize: 12,
                                color: Colors.grey[600],
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: const Color(0xFFF7F7F7),
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withValues(alpha: 0.1),
                              blurRadius: 4,
                              spreadRadius: 1,
                              offset: const Offset(2, 2),
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.grain,
                              size: 20,
                              color: Colors.indigo,
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Text(
                              "Précipitations",
                              style: GoogleFonts.merriweather(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey[700],
                              ),
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(height: 4),
                            Text(
                              '${meteo.precipitation} mm',
                              style: GoogleFonts.merriweather(
                                fontSize: 12,
                                color: Colors.grey[600],
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: const Color(0xFFF7F7F7),
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withValues(alpha: 0.1),
                              blurRadius: 4,
                              spreadRadius: 1,
                              offset: const Offset(2, 2),
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.beach_access,
                              size: 20,
                              color: Colors.lightBlue,
                            ),
                            const SizedBox(height: 8),
                            Text(
                              "Pluie",
                              style: GoogleFonts.merriweather(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey[700],
                              ),
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(height: 4),
                            Text(
                              '${meteo.rain} mm',
                              style: GoogleFonts.merriweather(
                                fontSize: 12,
                                color: Colors.grey[600],
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: const Color(0xFFF7F7F7),
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withValues(alpha: 0.1),
                              blurRadius: 4,
                              spreadRadius: 1,
                              offset: const Offset(2, 2),
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.ac_unit,
                              size: 20,
                              color: Colors.lightBlueAccent,
                            ),
                            const SizedBox(height: 8),
                            Text(
                              "Neige",
                              style: GoogleFonts.merriweather(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey[700],
                              ),
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(height: 4),
                            Text(
                              '${meteo.snowfall} mm',
                              style: GoogleFonts.merriweather(
                                fontSize: 12,
                                color: Colors.grey[600],
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: const Color(0xFFF7F7F7),
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withValues(alpha: 0.1),
                              blurRadius: 4,
                              spreadRadius: 1,
                              offset: const Offset(2, 2),
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.air,
                              size: 20,
                              color: Colors.green,
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Text(
                              "Vent",
                              style: GoogleFonts.merriweather(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey[700],
                              ),
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(height: 4),
                            Text(
                              '${meteo.windSpeed} km/h',
                              style: GoogleFonts.merriweather(
                                fontSize: 12,
                                color: Colors.grey[600],
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Latitude: ",
                        style: GoogleFonts.merriweather(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[600],
                        ),
                      ),
                      Text(
                        meteo.latitude.toString(),
                        style: GoogleFonts.merriweather(
                          fontSize: 14,
                          color: Colors.grey[600],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Longitude: ",
                        style: GoogleFonts.merriweather(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[600],
                        ),
                      ),
                      Text(
                        meteo.longitude.toString(),
                        style: GoogleFonts.merriweather(
                          fontSize: 14,
                          color: Colors.grey[600],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
