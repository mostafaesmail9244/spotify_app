import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:logger/logger.dart';
import 'package:spotify_app/data/models/auth/sign_in_req.dart';
import 'package:spotify_app/data/models/auth/sign_up_req.dart';

abstract class FireBaseAuthService {
  Future<Either<String, String>> signIn(SignInUserReq signInUserReq);
  Future<Either<String, String>> signUp(SignUpUserReq createUsreReq);
  Future<Either> getUser();
}

class FirebaseAuthImp implements FireBaseAuthService {
  @override
  Future<Either<String, String>> signIn(SignInUserReq signInUserReq) async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: signInUserReq.email!, password: signInUserReq.password!);
      return const Right('Signin was Successful');
    } on FirebaseAuthException catch (e) {
      String? message;

      if (e.code == 'invalid-email') {
        message = 'Not user found for that email';
      } else if (e.code == 'invalid-credential') {
        message = 'Email or password is incorrect';
      } else if (e.code == 'too-many-requests') {
        message = 'Too many requests, please try again later';
      }
      Logger().e('firebase error ${e.code}');
      Logger().e('firebase error ${e..message}');

      return Left(message ?? e.code);
    }
  }

  @override
  Future<Either<String, String>> signUp(SignUpUserReq createUserReq) async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: createUserReq.email!, password: createUserReq.password!);
      return const Right('Signup was Successful');
    } on FirebaseAuthException catch (e) {
      String? message;

      if (e.code == 'weak-password') {
        message = 'The password provided is too weak';
      } else if (e.code == 'email-already-in-use') {
        message = 'An account already exists with that email.';
      } else if (e.code == 'too-many-requests') {
        message = 'Too many requests, please try again later';
      }
      Logger().e('firebase error code ${e.code}');
      Logger().e('firebase error massage ${e.message}');
      return Left(message ?? e.code);
    }
  }

  @override
  Future<Either<String, String>> getUser() {
    throw UnimplementedError();
  }
}
