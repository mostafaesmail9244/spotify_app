import 'package:dartz/dartz.dart';
import 'package:spotify_app/data/models/auth/sign_in_req.dart';
import 'package:spotify_app/data/models/auth/sign_up_req.dart';

abstract class AuthRepository {
  Future<Either> signIn(SignInUserReq signInUserReq);
  Future<Either> signUp(SignUpUserReq signUpUserReq);
}
