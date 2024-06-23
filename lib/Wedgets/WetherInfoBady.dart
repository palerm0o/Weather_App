import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/Cubit/get%20Weather%20Cubit/Get_Weather_Cubit.dart';
import 'package:untitled/Model/weatherModel.dart';

class WetherInfoBady extends  StatelessWidget {
  const WetherInfoBady({super.key});

  // final WeatherModel weatherModel ;

  @override
  Widget build(BuildContext context) {


 var weatherModel = BlocProvider.of<GetWeatherCubit>(context).weatherModel;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:
          [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:
              [
                Text( weatherModel.cityName,
               style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),) ,
                Text('Update at ${weatherModel.date.hour}:${weatherModel.date.minute}',
                  style: TextStyle(fontSize: 30,),),

              ],
            ),
            SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:
              [
              Image.network('https:${weatherModel.image!}'),
              SizedBox(width: 15,),
              Text(weatherModel.temp.toString()),
                SizedBox(width: 15,),
              Column(children:
              [
                Text('Max: ${weatherModel.maxTemp}'),
                Text('Min:${weatherModel.manTemp}'),

              ],
              )
              ],
            ) ,
            SizedBox(height: 15,),
            Text( weatherModel.weatherCondation,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),)
          ],
        ),
      ),
    );
  }

}

