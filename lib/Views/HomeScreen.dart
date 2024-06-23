import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/Cubit/get%20Weather%20Cubit/Get_Weather_Cubit.dart';
import 'package:untitled/Cubit/get%20Weather%20Cubit/Get_Weather_State.dart';
import 'package:untitled/Model/weatherModel.dart';
import '../Wedgets/NoWeatherbody.dart';
import '../Wedgets/WetherInfoBady.dart';
import 'SearchView.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Weather App',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return SearchView();
              }));
            },
            icon: Icon(Icons.search),
          ),

        ],
        backgroundColor: Colors.blue,
      ),

      body: BlocBuilder <GetWeatherCubit,WeatherState>(
        builder: (context, state) {
          if (state is WeatherInitialState ){
            return NoWeatherBody();
          } else if (state is WeatherLoadedState)
              {
                return WetherInfoBady();
          } else {
                 return Text('Opps There Was Error') ;
          }
        },
      )

    );
  }
}
