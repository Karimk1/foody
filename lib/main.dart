import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled2/bloc_observer.dart';
import 'package:untitled2/features/home/representation/view/home_view.dart';
import 'package:untitled2/features/onboarding/onboarding_view.dart';
import 'package:untitled2/features/splash/representation/view/splash_view.dart';
import 'package:untitled2/shared/componants/constant.dart';

void main() {
  Widget widget = SplashView();
  Bloc.observer = MyBlocObserver();
  runApp(MyApp(
    StartScreen: widget,
  ));
}

class MyApp extends StatelessWidget {
  final Widget StartScreen;

  const MyApp({required this.StartScreen});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        textTheme: GoogleFonts.senTextTheme(),


      ).copyWith(scaffoldBackgroundColor: primaryColor),
      home: OnboardingView(),
    );
  }
}
