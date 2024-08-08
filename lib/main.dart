import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:logger/logger.dart';
import 'package:spotify_app/core/constants/constants.dart';
import 'package:spotify_app/core/helper/cache_helper.dart';
import 'package:spotify_app/core/themes/app_colors.dart';
import 'package:spotify_app/core/themes/app_theme.dart';
import 'package:spotify_app/core/router/app_router.dart';
import 'package:spotify_app/core/router/routes.dart';
import 'package:spotify_app/presentation/splash/controllers/cubit/theme_mode_cubit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper.init();
  Logger()
      .d('theme mode: ${await CacheHelper.getData(key: Constants.themeMode)}');
  await ScreenUtil.ensureScreenSize();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: AppColors.darkGrey));

  runApp(const SpotifyApp());
}

class SpotifyApp extends StatelessWidget {
  const SpotifyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => BlocProvider(
        create: (context) => ThemeModeCubit(),
        child: BlocBuilder<ThemeModeCubit, ThemeModeState>(
          builder: (context, state) {
            return MaterialApp(
              onGenerateRoute: AppRouter().onGenerateRoute,
              debugShowCheckedModeBanner: false,
              initialRoute: Routes.splash,
              title: 'Flutter Demo',
              theme: CacheHelper.getData(key: Constants.themeMode) == true
                  ? AppTheme.darkTheme
                  : AppTheme.lightTheme,
            );
          },
        ),
      ),
    );
  }
}
