import 'package:domain_entities/domain_entites.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:meteo_repository/meteo_repository.dart';

part 'meteo_list_state.dart';

class MeteoListProvider with ChangeNotifier {
  MeteoListState _state = MeteoListState.initial();

  MeteoListProvider({required this.repository});
  final MeteoRepository repository;

  MeteoListState get state => _state;

  Future<void> fetchAndSetMeteo() async {
    _state = _state.copyWith(status: MeteoListStatus.loading);
    notifyListeners();

    final datas = await repository.getAllMeteo();

    _state = _state.copyWith(status: MeteoListStatus.loaded, meteo: datas);
  }
}