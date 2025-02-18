import 'package:domain_entities/domain_entites.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:meteo_repository/meteo_repository.dart';
import 'package:mocktail/mocktail.dart';

class MockHttpClient extends Mock implements http.Client {}

void main() {
  late MeteoRepository meteoRepository;

  final mockClient = MockHttpClient();

  const url =
      'https://api.open-meteo.com/v1/forecast?latitude=47.16,47.18,47.12&longitude=7.02,6.9,7.2599998&current=temperature_2m,is_day,rain,snowfall,weather_code&daily=temperature_2m_max,temperature_2m_min&timezone=Europe%2FBerlin&forecast_days=1';

  setUp(() {
    meteoRepository =
        MeteoRepository(storage: MeteoRemoteStorage(client: mockClient));
  });

  void preparerMockGet200() {
    const response =
        '[{"latitude":47.16,"longitude":7.02,"generationtime_ms":0.02765655517578125,"utc_offset_seconds":0,"timezone":"Europe/Berlin","timezone_abbreviation":"Europe/Berlin","elevation":777.0,"current":{"temperature_2m":2.7,"weather_code":3,"relative_humidity_2m":83,"is_day":1,"precipitation":0.0,"rain":0.0,"snowfall":0.0,"wind_speed_10m":5},"daily_units":{"time":"iso8601","temperature_2m_max":"°C","temperature_2m_min":"°C"},"daily":{"time":["2025-01-28"],"temperature_2m_max":[6.5],"temperature_2m_min":[2.5]}},{"latitude":47.18,"longitude":6.9,"generationtime_ms":0.015974044799804688,"utc_offset_seconds":0,"timezone":"Europe/Berlin","timezone_abbreviation":"Europe/Berlin","elevation":1026.0,"location_id":1,"current":{"temperature_2m":2.7,"weather_code":3,"relative_humidity_2m":83,"is_day":1,"precipitation":0.0,"rain":0.0,"snowfall":0.0,"wind_speed_10m":5},"daily_units":{"time":"iso8601","temperature_2m_max":"°C","temperature_2m_min":"°C"},"daily":{"time":["2025-01-28"],"temperature_2m_max":[4.9],"temperature_2m_min":[0.8]}}]';

    when(() => mockClient.get(Uri.parse(url)))
        .thenAnswer((_) async => http.Response(response, 200));
  }

  test('Repo getAllMeteo retourne qqch', () async {
    preparerMockGet200();
    final result = await meteoRepository.getAllMeteo();

    expect(result, isA<List<Meteo>>());
  });

  test('Assurer que Repo retourne les bonnes valeurs', () async {
    const meteo = [
      Meteo(
        latitude: 47.16,
        longitude: 7.02,
        timezone: "Europe/Berlin",
        date: ["2025-01-28"],
        temperatureMax: [6.5],
        temperatureMin: [2.5],
        temperature: 2.7,
        weatherCode: 3,
        relativeHumidity: 83.0,
        isDay: 1,
        precipitation: 0.0,
        rain: 0.0,
        snowfall: 0.0,
        windSpeed: 5.0
      ),
      Meteo(
        latitude: 47.18,
        longitude: 6.9,
        timezone: "Europe/Berlin",
        date: ["2025-01-28"],
        temperatureMax: [4.9],
        temperatureMin: [0.8],
        temperature: 2.7,
        weatherCode: 3,
        relativeHumidity: 83.0,
        isDay: 1,
        precipitation: 0.0,
        rain: 0.0,
        snowfall: 0.0,
        windSpeed: 5.0
      ),
    ];

    preparerMockGet200();

    final result = await meteoRepository.getAllMeteo();

    expect(result, meteo);
  });

  void preparerMockReponseNull200() {
    when(() => mockClient.get(Uri.parse(url)))
        .thenAnswer((_) async => http.Response('null', 200));
  }

  test('Repo getAllTomes retourne un element null si pas data', () async {
    preparerMockReponseNull200();
    final result = await meteoRepository.getAllMeteo();
    expect(result, <Meteo>[]);
  });

  //test valeur erronée
  //test problème connexion
  //test erreur 404
  //test donnée mal formatée
}
