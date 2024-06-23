import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/Model/weatherModel.dart';
import 'package:untitled/Views/SearchView.dart';
import '../../Services/Weather_Services.dart';
import 'Get_Weather_State.dart';

class GetWeatherCubit extends Cubit <WeatherState>
{
  GetWeatherCubit() :super(WeatherInitialState( )) ; // اول وضع هيبقى عليه ال  app


  late WeatherModel weatherModel ; // غلشان اقدر اسحب بيه الداتا

  getWeatherModel({required String CityName})async { //    من  User  (CityName) بقوله يستقبل

try {
  weatherModel  =
  (await WeatherServices(Dio()). getCurrentWeather(cityName: CityName ))!;

   emit(WeatherLoadedState(weatherModel)); // بلغ ui انو ينفذ دا

  } catch(e)
    {
      emit(WeatherFailurState(
        e.toString( )
      ));
    }

  }

}


