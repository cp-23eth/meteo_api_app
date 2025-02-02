import 'package:domain_entities/domain_entites.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:meteo_repository/meteo_repository.dart';

void main() {
  late Map<String, dynamic> json;
  setUp(() {
    json = {
      "latitude": 47.12,
      "longitude": 7.02,
      "timezone": "Europe/Berlin",
      "daily": {
        "time": ["2025-01-28"],
        "temperature_2m_max": [5.3],
        "temperature_2m_min": [2.2]
      },
      "current": {
        "temperature_2m": 2.7,
        "weather_code": 3,
        "relative_humidity_2m": 83.0,
        "is_day": 1,
        "precipitation": 0.0,
        "rain": 0.0,
        "snowfall": 0.0,
        "wind_speed_10m": 2.0
      }
    };
  });

  test('La meteo est correctement créée depuis API', () {
    final result = MeteoRemoteRtdbModel.fromJson(json).toDomainEntity();
    expect(result, isA<Meteo>());
  });

  test('Meteo contient les bonnes données depuis API', () {
    const meteo = Meteo(
      latitude: 47.12,
      longitude: 7.02,
      timezone: "Europe/Berlin",
      date: ["2025-01-28"],
      temperatureMax: [5.3],
      temperatureMin: [2.2],
      temperature: 2.7,
      weatherCode: 3,
      relativeHumidity: 83.0,
      isDay: 1,
      precipitation: 0.0,
      rain: 0.0,
      snowfall: 0.0,
      windSpeed: 2.0,
    );
    final result = MeteoRemoteRtdbModel.fromJson(json).toDomainEntity();
    expect(result, meteo);
  });
}
