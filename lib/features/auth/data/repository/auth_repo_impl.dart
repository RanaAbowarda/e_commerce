import 'package:dartz/dartz.dart';


import '../../../../core/exceptions/failuers.dart';
import '../../domain/entity/sign_up_entity.dart';
import '../../domain/repository/auth_repo.dart';
import '../data_source/remote/auth_remote_ds.dart';
import '../models/user_model.dart';

class AuthRepoImpl implements AuthRepo {
  AuthRemoteDs authRemoteDs;

  AuthRepoImpl(this.authRemoteDs);

  @override
  Future<Either<RouteFailures, bool>> signIn(
      String email, String password) async {
    try {
      bool loggedIn = await authRemoteDs.signIn(email, password);

      if (!loggedIn) {
        return Left(
            RouteInvalidCredtionalFailures("Invalid username Or password"));
      }
      return Right(loggedIn);
    } catch (e) {
      return Left(RouteRemoteFailures(e.toString()));
    }
  }

  @override
  Future<Either<RouteFailures, UserModel>> signUp(
      SignUpEntity signUpEntity) async {
    try {
      var userModel = await authRemoteDs.signUp(signUpEntity);

      print(userModel);
      return Right(userModel);
    } catch (e) {
      return Left(RouteRemoteFailures(e.toString()));
    }
  }
}
