import 'package:counter_app/Bloc/bloc_bloc.dart';
import 'package:counter_app/counter_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterBloc(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'couner App_Bloc',
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.black,
          buttonTheme: const ButtonThemeData(
            buttonColor: Colors.white,
            textTheme: ButtonTextTheme.primary,
          ),
        ),
        home: const CounterHome(),
      ),
    );
  }
}
