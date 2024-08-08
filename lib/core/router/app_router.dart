import 'package:flutter/material.dart';
import 'package:spotify_app/core/router/routes.dart';
import 'package:spotify_app/presentation/splash/screens/choose_mode_screen.dart';
import 'package:spotify_app/presentation/splash/screens/get_start_screen.dart';
import 'package:spotify_app/presentation/splash/screens/splash_screen.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings settings) {
    // final data = settings.arguments;

    switch (settings.name) {
      case Routes.splash:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case Routes.getStartScreen:
        return MaterialPageRoute(builder: (_) => const GetStartScreen());
      case Routes.chooseModeScreen:
        return MaterialPageRoute(builder: (_) => const ChooseModeScreen());
      default:
    }
    return null;
  }
}
