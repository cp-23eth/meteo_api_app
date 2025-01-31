import 'package:equatable/equatable.dart';

class Meteo extends Equatable {
  const Meteo({
    required this.latitude,
    required this.longitude,
    required this.timezone,
    required this.date,
    required this.temperatureMax,
    required this.temperatureMin,
    required this.temperature,
    required this.weatherCode,
  });

  final double latitude;
  final double longitude;
  final String timezone;
  final List<String> date;
  final List<double> temperatureMax;
  final List<double> temperatureMin;
  final double temperature;
  final int weatherCode;

  @override
  List<Object?> get props => [latitude, longitude, timezone, date, temperatureMax, temperatureMin, temperature, weatherCode];

  @override
  bool? get stringify => true;

  Meteo copyWith({
    double? latitude,
    double? longitude,
    String? timezone,
    List<String>? date,
    List<double>? temperatureMax,
    List<double>? temperatureMin,
    double? temperature,
    int? weatherCode,
  }) {
    return Meteo(
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      timezone: timezone ?? this.timezone,
      date: date ?? this.date,
      temperatureMax: temperatureMax ?? this.temperatureMax,
      temperatureMin: temperatureMin ?? this.temperatureMin,
      temperature: temperature ?? this.temperature,
      weatherCode: weatherCode ?? this.weatherCode,
    );
  }
}
