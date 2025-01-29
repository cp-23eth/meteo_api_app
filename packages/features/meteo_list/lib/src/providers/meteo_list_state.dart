part of 'meteo_list_provider.dart';

enum MeteoListStatus {
  initial,
  loading,
  loaded,
}

class MeteoListState extends Equatable {
  const MeteoListState({required this.status, required this.meteo});

  factory MeteoListState.initial() {
    return MeteoListState(
      status: MeteoListStatus.initial,
      meteo: List<Meteo>.empty(),
    );
  }

  final MeteoListStatus status;
  final List<Meteo> meteo;

  @override
  List<Object?> get props => [status, meteo];

  MeteoListState copyWith({
    MeteoListStatus? status,
    List<Meteo>? meteo,
  }) {
    return MeteoListState(
      status: status ?? this.status,
      meteo: meteo ?? this.meteo,
    );
  }

  @override
  bool? get stringify => true;
}
