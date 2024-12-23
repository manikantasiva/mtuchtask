import 'package:flutter_bloc/flutter_bloc.dart';
import 'splash_event.dart';
import 'splash_state.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc() : super(SplashInitial()) {
    on<LoadSplash>((event, emit) async {
      await Future.delayed(Duration(seconds: 2)); // Simulate a delay
      emit(SplashLoaded());
    });

    add(LoadSplash());
  }
}
