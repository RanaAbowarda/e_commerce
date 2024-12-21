import 'package:dartz/dartz.dart';
import '../../../../core/exceptions/failuers.dart';
import '../repository/auth_repo.dart';

class LoginUseCase {
  AuthRepo repo;

  LoginUseCase(this.repo);

  Future<Either<RouteFailures,bool>> call(String email, String password) =>
      repo.signIn(email, password);
}
