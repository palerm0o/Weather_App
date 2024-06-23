

import 'dart:math';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/Cubit/get%20Weather%20Cubit/Get_Weather_Cubit.dart';
import 'package:untitled/Model/weatherModel.dart';
import 'package:untitled/Services/Weather_Services.dart';


class SearchView extends  StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search a City',style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.orange,

      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:
        [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              onSubmitted: ( value )  async {

              var getWeatherCubit = BlocProvider.of<GetWeatherCubit>(context);
              getWeatherCubit.getWeatherModel(CityName: value);

               Navigator.pop(context);

              },
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: 40,horizontal: 16),
                hintText: 'Enter City Name',
                labelText: 'Search',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Colors.orange),
                ) ,
                suffixIcon: Icon(Icons.search),


              ) ,


            ),
          ),
        ],
      ),
    );
  }
}

