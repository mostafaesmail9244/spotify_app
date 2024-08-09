import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spotify_app/core/helper/extentions.dart';
import 'package:spotify_app/core/themes/app_colors.dart';

class AppWarning {
  // static void logoutDialog({required BuildContext context}) {
  //   showDialog(
  //     context: context,
  //     builder: (context) => AlertDialog(
  //       actionsPadding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
  //       insetPadding: const EdgeInsets.symmetric(horizontal: 20),
  //       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
  //       content: SizedBox(
  //         width: context.deviceWidth,
  //         child: Text(
  //           'Do you want to logout?',
  //           style:TextStyle(fontSize: 18,color: Color(0xff626262))),
  //         ),
  //       ),
  //       actions: [
  //         TextButton(
  //             onPressed: () => context.pop(),
  //             child: Text(
  //               'Cancel',
  //               style:
  //                   AppStyles.medium16.copyWith(color: const Color(0xff626262)),
  //             )),
  //         TextButton(
  //             onPressed: () {
  //               // CacheHelper.removeData(key: Constants.userToken);
  //               // CacheHelper.removeData(key: Constants.userId);
  //               // context.pushNamedAndRemoveUntil(Routes.loginView,
  //                   predicate: (route) => false);
  //             },
  //             child: Text(
  //               'Logout',
  //               style: AppStyles.medium16.copyWith(color: Colors.red),
  //             )),
  //       ],
  //     ),
  //   );
  // }

  static Future<void> showAwesomeDialog({
    required BuildContext context,
    required String title,
    String? desc,
    required DialogType dialogType,
    //required void Function()? onTap,
  }) {
    return AwesomeDialog(
      context: context,
      dialogType: dialogType,
      animType: AnimType.topSlide,
      title: title,
      desc: desc,
      descTextStyle: const TextStyle(color: AppColors.grey, fontSize: 16),
      dialogBackgroundColor: Colors.white,
    ).show();
  }

  static void snackBarState(BuildContext context, String text,
      {int seconds = 3, bool isError = false}) {
    // context.pop();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        duration: Duration(seconds: seconds),
        backgroundColor: isError ? Colors.red : AppColors.primary,
        content: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 15.sp, fontWeight: FontWeight.w500,
            //color: Colors.black,
          ),
        ),
      ),
    );
  }

  static void dialogErrorState(BuildContext context, String error) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        icon: const Icon(
          Icons.error,
          color: Colors.red,
          size: 32,
        ),
        content: Text(
          error,
          style: TextStyle(
            fontSize: 16.sp,
            color: Colors.black,
          ),
          textAlign: TextAlign.center,
        ),
        actions: [
          TextButton(
            onPressed: () {
              context.pop();
            },
            child: Text(
              'close',
              style: TextStyle(
                fontSize: 14.sp,
                color: Colors.blue,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
