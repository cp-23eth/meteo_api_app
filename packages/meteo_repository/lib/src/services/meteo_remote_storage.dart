import 'dart:convert';
import 'dart:io';

import 'package:domain_entities/domain_entites.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:logger/logger.dart';
import 'package:meteo_repository/meteo_repository.dart';

class MeteoRemoteStorage implements MeteoStorage {
  static const url = 'https://api.open-meteo.com/v1/forecast?latitude=47.16,47.18,47.12&longitude=7.02,6.9,7.2599998&current=temperature_2m,is_day,rain,snowfall,weather_code&daily=temperature_2m_max,temperature_2m_min&timezone=Europe%2FBerlin&forecast_days=1';

  MeteoRemoteStorage({@visibleForTesting http.Client? client})
      : _client = client ?? http.Client();

  final http.Client _client;

  final logger = Logger();

  @override
  Future<List<Meteo>> getAllMeteo() async {
    final meteo = <Meteo>[];

    try{
      final parsedUrl = Uri.parse(url);
      final response = await _client.get(parsedUrl);
      final statusCode = response.statusCode;

      if(statusCode != 200){
        throw HttpException('$statusCode');
      }

      final jsonString = response.body;
      final data = jsonDecode(jsonString);

      if(data != null) {
        data.forEach((meteoData){
          meteo.add(MeteoRemoteRtdbModel.fromJson(meteoData).toDomainEntity());
        });
      }

      return meteo;
    } on HttpException catch (_) {
      logger.w('Ressources introuvables');
      rethrow;
    } on ClientException catch (_) {
      logger.w('Problèmes de connexion au serveur');
      rethrow;
    }
    catch (e) {
      logger.w(e.toString());
      return meteo;
    }
  }
}
