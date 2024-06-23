

import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:untitled/Model/weatherModel.dart';

class WeatherServices {

  final Dio dio ; // تعريف dio
  final String baseUrl = 'http://api.weatherapi.com/v1'; // علشان لو بستخدم اكتر من حاجه وحبيت اخير الdomin يبقى من مكان واحد
  final String apiKey ='0220ab3d9f334ef8821223256242603' ;

  WeatherServices (this.dio);


  Future<WeatherModel?> getCurrentWeather ({required String cityName}) async {

    try {  //     علشان لو فى error ينفذ الى ف catch

    Response response = await dio.get(
        '$baseUrl/forecast.json?key=$apiKey&q=$cityName&days=1' );

    WeatherModel weatherModel = WeatherModel.fromJson(response.data);

    return weatherModel ;

  }  on DioException catch (e){

      final String errmessage = e.response?.data['error']['message'] ?? 'opps there was an error ,try later ' ;
      throw Exception(errmessage);
  } catch(e){
      log(e.toString());
      throw  Exception('opps there was an error ,try later');
    }

  }


}