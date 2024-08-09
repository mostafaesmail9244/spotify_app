import 'package:dartz/dartz.dart';
import 'package:spotify_app/core/di/debendencies_injection.dart';
import 'package:spotify_app/data/models/auth/sign_in_req.dart';
import 'package:spotify_app/data/models/auth/sign_up_req.dart';
import 'package:spotify_app/data/sources/auth/firebase_auth_service.dart';
import 'package:spotify_app/domain/repository/auth.dart';

class AuthRepositoryImpl extends AuthRepository {
  @override
  Future<Either> signIn(SignInUserReq signInUserReq) async {
    return await getIt<FirebaseAuthImp>().signIn(signInUserReq);
  }

  @override
  Future<Either> signUp(SignUpUserReq signUpUserReq) async {
    return await getIt<FirebaseAuthImp>().signUp(signUpUserReq);
  }
}
