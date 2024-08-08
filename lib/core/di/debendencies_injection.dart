// De

import 'package:get_it/get_it.dart';
import 'package:spotify_app/presentation/auth/controllers/cubit/register_cubit.dart';
import 'package:spotify_app/presentation/auth/controllers/login/login_cubit.dart';

final getIt = GetIt.instance;

Future<void> init() async {
  getIt.registerFactory(() => LoginCubit());
  getIt.registerFactory(() => RegisterCubit());
}
