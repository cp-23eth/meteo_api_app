import 'package:domain_entities/domain_entites.dart';
import 'package:meteo_repository/meteo_repository.dart';

class MeteoRepository {
  const MeteoRepository({required this.storage});

  final MeteoStorage storage;

  Future<List<Meteo>> getAllMeteo() async {
    return await storage.getAllMeteo();
  }
}