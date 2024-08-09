import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:spotify_app/core/themes/app_colors.dart';

customLoading(BuildContext context) {
  return showDialog(
    barrierDismissible: false,
    context: context,
    builder: (context) => Center(
      child: SpinKitWaveSpinner(
        waveColor: AppColors.primary,
        trackColor: AppColors.primary,
        color: Colors.white,
        size: 70.h,
      ),
    ),
  );
}
