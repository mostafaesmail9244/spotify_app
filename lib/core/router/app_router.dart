import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify_app/core/di/debendencies_injection.dart';
import 'package:spotify_app/core/router/routes.dart';
import 'package:spotify_app/presentation/auth/controllers/register/register_cubit.dart';
import 'package:spotify_app/presentation/auth/controllers/login/login_cubit.dart';
import 'package:spotify_app/presentation/auth/pages/auth_screen.dart';
import 'package:spotify_app/presentation/auth/pages/login_screen.dart';
import 'package:spotify_app/presentation/auth/pages/register_screen.dart';
import 'package:spotify_app/presentation/splash/pages/choose_mode_screen.dart';
import 'package:spotify_app/presentation/splash/pages/get_start_screen.dart';
import 'package:spotify_app/presentation/splash/pages/splash_screen.dart';

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
      case Routes.authScreen:
        return MaterialPageRoute(builder: (_) => const AuthScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => getIt<LoginCubit>(),
                  child: const LoginScreen(),
                ));
      case Routes.registerScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => getIt<RegisterCubit>(),
                  child: const RegisterScreen(),
                ));
      default:
    }
    return null;
  }
}
