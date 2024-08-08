import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spotify_app/core/helper/cach_helper.dart';
import 'package:spotify_app/core/themes/app_colors.dart';
import 'package:spotify_app/core/themes/app_theme.dart';
import 'package:spotify_app/core/router/app_router.dart';
import 'package:spotify_app/core/router/routes.dart';

void main() async {
  runApp(const MyApp());
  WidgetsFlutterBinding.ensureInitialized();
  await CashHelper.init();
  await ScreenUtil.ensureScreenSize();

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: AppColors.grey));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MaterialApp(
        onGenerateRoute: AppRouter().onGenerateRoute,
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.splash,
        title: 'Flutter Demo',
        theme: AppTheme.lightTheme,
      ),
    );
  }
}
