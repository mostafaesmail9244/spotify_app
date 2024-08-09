import 'package:flutter/material.dart';
import 'package:spotify_app/core/constants/assets.dart';
import 'package:spotify_app/core/router/routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  initState() {
    navigatToOnBoard(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(Assets.splashLogo),
      ),
    );
  }

  void navigatToOnBoard(context) async {
    Duration duration = const Duration(seconds: 3);
    await Future.delayed(duration);
    Navigator.pushReplacementNamed(context, Routes.getStartScreen);
  }
}
