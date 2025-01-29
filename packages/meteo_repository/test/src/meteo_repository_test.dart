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
      'https://api.open-meteo.com/v1/forecast?latitude=47.1528,47.1771,47.1371&longitude=6.9969,6.905,7.2461&daily=temperature_2m_max,temperature_2m_min&timezone=Europe%2FBerlin&forecast_days=1';

  setUp(() {
    meteoRepository =
        MeteoRepository(storage: MeteoRemoteStorage(client: mockClient));
  });

  void preparerMockGet200() {
    const response =
        '[{"latitude":47.16,"longitude":7.02,"generationtime_ms":0.0278949737548828,"utc_offset_seconds":3600,"timezone":"Europe/Berlin","timezone_abbreviation":"GMT+1","elevation":825,"daily_units":{"time":"iso8601","temperature_2m_max":"°C","temperature_2m_min":"°C"},"daily":{"time":["2025-01-28"],"temperature_2m_max":[5.3],"temperature_2m_min":[1.7]}},{"latitude":47.18,"longitude":6.9,"generationtime_ms":0.0140666961669922,"utc_offset_seconds":3600,"timezone":"Europe/Berlin","timezone_abbreviation":"GMT+1","elevation":1037,"location_id":1,"daily_units":{"time":"iso8601","temperature_2m_max":"°C","temperature_2m_min":"°C"},"daily":{"time":["2025-01-28"],"temperature_2m_max":[3.5],"temperature_2m_min":[0.2]}}]';

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
      ),
      Meteo(
        latitude: 47.18,
        longitude: 6.9,
        timezone: "Europe/Berlin",
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
