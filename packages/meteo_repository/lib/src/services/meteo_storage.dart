import 'package:domain_entities/domain_entites.dart';

abstract class MeteoStorage {
  Future<List<Meteo>> getAllMeteo();
}