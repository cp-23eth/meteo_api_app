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
    );
    final result = MeteoRemoteRtdbModel.fromJson(json).toDomainEntity();
    expect(result, meteo);
  });
}
