import 'package:domain_entities/domain_entites.dart';
import 'package:intl/intl.dart';
import 'package:meteo_repository/meteo_repository.dart';

extension MeteoRemoteRtdbModelToDomain on MeteoRemoteRtdbModel {
  Meteo toDomainEntity() {
    List<String> formattedDates = date.map((d) {
    DateTime parsedDate = DateTime.parse(d); // Convertit la chaîne en DateTime
    return DateFormat('dd.MM.yyyy').format(parsedDate); // Formate la date
    }).toList();

    return Meteo(
      latitude: latitude,
      longitude: longitude,
      timezone: timezone,
      date: formattedDates,
      temperatureMax: temperatureMax,
      temperatureMin: temperatureMin,
      temperature: temperature,
      weatherCode: weatherCode,
    );
  }
}
