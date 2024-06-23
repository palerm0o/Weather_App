class WeatherModel {

  final String cityName;
  final DateTime date;
  final String? image;
  final double temp;
  final double maxTemp;
  final double manTemp;
  final String weatherCondation;

  WeatherModel(
      {
         required this.cityName,
        required this.date,
        this.image,
        required this.temp,
        required this.maxTemp,
        required this.manTemp,
        required this.weatherCondation
      } );

  factory WeatherModel.fromJson (json)
  {
    return WeatherModel
      (
      cityName: json['location']['name'] ,
      date: DateTime.parse(json['current']['last_updated']) ,
      manTemp: json['forecast']['forecastday'][0]['day']['mintemp_c'],
      maxTemp: json['forecast']['forecastday'][0]['day']['maxtemp_c'],
      temp: json['forecast']['forecastday'][0]['day']['avgtemp_c'],
      weatherCondation: json['forecast']['forecastday'][0]['day'] ['condition']['text'],
      image: json['forecast']['forecastday'][0]['day'] ['condition']['icon'] ,
      ) ;

  }

}

