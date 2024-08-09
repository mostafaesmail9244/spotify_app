// De

import 'package:get_it/get_it.dart';
import 'package:spotify_app/data/repository/auth/auth_repo_imp.dart';
import 'package:spotify_app/data/sources/auth/firebase_auth_service.dart';
import 'package:spotify_app/domain/repository/auth.dart';
import 'package:spotify_app/domain/usecases/sign_in.dart';
import 'package:spotify_app/domain/usecases/sign_up.dart';
import 'package:spotify_app/presentation/auth/controllers/register/register_cubit.dart';
import 'package:spotify_app/presentation/auth/controllers/login/login_cubit.dart';

final getIt = GetIt.instance;

Future<void> initInjection() async {
  getIt.registerSingleton<FireBaseAuthService>(FirebaseAuthImp());
  getIt.registerSingleton<FirebaseAuthImp>(FirebaseAuthImp());

  // getIt.registerSingleton<SongFirebaseService>(SongFirebaseServiceImpl());

  getIt.registerSingleton<AuthRepository>(AuthRepositoryImpl());

  // getIt.registerSingleton<SongsRepository>(SongRepositoryImpl());

  getIt.registerSingleton<SignUpUseCase>(SignUpUseCase());

  getIt.registerSingleton<SignInUseCase>(SignInUseCase());

  // getIt.registerSingleton<GetNewsSongsUseCase>(GetNewsSongsUseCase());

  // getIt.registerSingleton<GetPlayListUseCase>(GetPlayListUseCase());

  // getIt.registerSingleton<AddOrRemoveFavoriteSongUseCase>(
  // AddOrRemoveFavoriteSongUseCase());
//
  // getIt.registerSingleton<IsFavoriteSongUseCase>(IsFavoriteSongUseCase());
//
  // getIt.registerSingleton<GetUserUseCase>(GetUserUseCase());
//
  // getIt.registerSingleton<GetFavoriteSongsUseCase>(GetFavoriteSongsUseCase());
//
  //cubits
  getIt.registerFactory(() => LoginCubit());
  getIt.registerFactory(() => RegisterCubit());
}
