import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/Cubit/get%20Weather%20Cubit/Get_Weather_Cubit.dart';
import 'package:untitled/Cubit/get%20Weather%20Cubit/Get_Weather_State.dart';
import 'Views/HomeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetWeatherCubit(),

      child: MaterialApp(

        debugShowCheckedModeBanner: false,


        home: const HomeScreen(),

      ),
    );
  }

}
