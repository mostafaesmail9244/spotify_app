import 'package:dartz/dartz.dart';
import 'package:spotify_app/core/di/debendencies_injection.dart';
import 'package:spotify_app/core/use_case/use_case.dart';
import 'package:spotify_app/data/models/auth/sign_up_req.dart';
import 'package:spotify_app/domain/repository/auth.dart';

class SignUpUseCase implements UseCase<Either, SignUpUserReq> {
  @override
  Future<Either> call({SignUpUserReq? params}) async {
    return await getIt<AuthRepository>().signUp(params!);
  }
}
