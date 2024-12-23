import 'package:flutter/material.dart';
import 'package:mtouchlabtask/splash/bloc/splash_bloc.dart';
import 'package:mtouchlabtask/splash/presentation/screens/splash_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Clean Architecture',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: BlocProvider(
        create: (_) => SplashBloc(),
        child: SplashScreen(),
      ),
    );
  }
}