import 'package:dartz/dartz.dart';
import 'package:spotify_app/core/di/debendencies_injection.dart';
import 'package:spotify_app/core/use_case/use_case.dart';
import 'package:spotify_app/data/models/auth/sign_in_req.dart';
import 'package:spotify_app/domain/repository/auth.dart';

class SignInUseCase extends UseCase<Either, SignInUserReq> {
  @override
  Future<Either> call({SignInUserReq? params}) async {
    return await getIt<AuthRepository>().signIn(params!);
  }
}
