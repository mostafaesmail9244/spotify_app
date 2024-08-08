import 'package:flutter/material.dart';
import 'package:spotify_app/core/themes/app_colors.dart';

class ModeIconButton extends StatelessWidget {
  const ModeIconButton({
    super.key,
    required this.onPressed,
    required this.icon,
    this.color = AppColors.darkGrey,
  });
  final void Function() onPressed;
  final IconData icon;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(
          icon,
          color: AppColors.grey,
        ),
      ),
    );
  }
}
