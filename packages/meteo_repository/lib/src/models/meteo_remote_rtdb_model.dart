class MeteoRemoteRtdbModel {
  const MeteoRemoteRtdbModel(
    this.latitude,
    this.longitude,
    this.timezone,
    this.date,
    this.temperatureMax,
    this.temperatureMin,
    this.temperature,
    this.weatherCode,
    this.relativeHumidity,
    this.isDay,
    this.precipitation,
    this.rain,
    this.snowfall,
    this.windSpeed,
  );

  factory MeteoRemoteRtdbModel.fromJson(Map<String, dynamic> json) {
    return MeteoRemoteRtdbModel(
      json['latitude'],
      json['longitude'],
      json['timezone'],
      List<String>.from(json['daily']['time']),
      List<double>.from(json['daily']['temperature_2m_max']),
      List<double>.from(json['daily']['temperature_2m_min']),
      json['current']['temperature_2m'],
      json['current']['weather_code'],
      json['current']['relative_humidity_2m'],
      json['current']['is_day'],
      json['current']['precipitation'],
      json['current']['rain'],
      json['current']['snowfall'],
      json['current']['wind_speed_10m'],
    );
  }

  final double latitude;
  final double longitude;
  final String timezone;
  final List<String> date;
  final List<double> temperatureMax;
  final List<double> temperatureMin;
  final double temperature;
  final int weatherCode;
  final double relativeHumidity;
  final int isDay;
  final double precipitation;
  final double rain;
  final double snowfall;
  final double windSpeed;
}
