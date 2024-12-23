import 'package:flutter/material.dart';
import 'package:mtouchlabtask/home/presentation/screens/home_screen.dart';
import 'package:mtouchlabtask/splash/bloc/splash_bloc.dart';
import 'package:mtouchlabtask/splash/bloc/splash_state.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_bloc/flutter_bloc.dart';


class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<SplashBloc, SplashState>(
      listener: (context, state) {
        if (state is SplashLoaded) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (_) => HomeScreen()),
          );
        }
      },
      child: Scaffold(
        body: Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
