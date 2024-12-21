

import '../../../domain/entity/sign_up_entity.dart';
import '../../models/user_model.dart';

abstract class AuthRemoteDs{


  Future<bool> signIn(String email, String password);
  Future<UserModel> signUp(SignUpEntity signUpEntity);

}