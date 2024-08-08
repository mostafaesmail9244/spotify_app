
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify_app/core/constants/assets.dart';

class SocialButtons extends StatelessWidget {
  const SocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconButton(
            onPressed: () {}, icon: SvgPicture.asset(Assets.googleIcon)),
        IconButton(
            onPressed: () {}, icon: SvgPicture.asset(Assets.appleIcon)),
      ],
    );
  }
}
