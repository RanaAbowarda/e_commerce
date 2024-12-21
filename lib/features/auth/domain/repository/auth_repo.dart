import 'package:dartz/dartz.dart';
import '../../../../core/exceptions/failuers.dart';
import '../../data/models/user_model.dart';
import '../entity/sign_up_entity.dart';

abstract class AuthRepo {
  Future<Either<RouteFailures,bool>> signIn(String email, String password);
  Future<Either<RouteFailures,UserModel>> signUp(SignUpEntity signUpEntity);


}
