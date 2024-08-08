import 'package:flutter/material.dart';

import 'package:spotify_app/core/constants/assets.dart';


class BackgroundScreen extends StatelessWidget {
  const BackgroundScreen({
    super.key,
    required this.widget,
  });
  final Widget widget;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              Assets.startImage,
              fit: BoxFit.fill,
              height: double.infinity,
              width: double.infinity,
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Image.asset(Assets.splashLogo),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                  padding: const EdgeInsets.only(bottom: 20.0), child: widget),
            )
          ],
        ),
      ),
    );
  }
}
