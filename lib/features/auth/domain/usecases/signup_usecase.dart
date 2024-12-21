import 'package:dartz/dartz.dart';


import '../../../../core/exceptions/failuers.dart';
import '../../data/models/user_model.dart';
import '../entity/sign_up_entity.dart';
import '../repository/auth_repo.dart';

class SignUpUseCase {
  AuthRepo repo;

  SignUpUseCase(this.repo);

  Future<Either<RouteFailures,UserModel>> call(SignUpEntity signUpEntity)
  => repo.signUp(signUpEntity);
}
