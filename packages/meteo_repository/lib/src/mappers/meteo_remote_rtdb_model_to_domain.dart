import 'package:domain_entities/domain_entites.dart';
import 'package:meteo_repository/meteo_repository.dart';

extension MeteoRemoteRtdbModelToDomain on MeteoRemoteRtdbModel {
  Meteo toDomainEntity() {
    return Meteo(
      latitude: latitude,
      longitude: longitude,
      timezone: timezone,
      date: date,
      temperatureMax: temperatureMax,
      temperatureMin: temperatureMin,
    );
  }
}
