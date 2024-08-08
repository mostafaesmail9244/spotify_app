import 'package:flutter/material.dart';
import 'package:spotify_app/core/themes/app_colors.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key, required this.width});
  final double width;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1,
      width: width,
      color: AppColors.grey,
    );
  }
}
