

import '../../../../../core/api/api_manager.dart';
import '../../../../../core/api/end_points.dart';
import '../../../../../core/api/status_codes.dart';
import '../../../../../core/cache/shared_pref.dart';
import '../../../../../core/exceptions/exceptions.dart';
import '../../../domain/entity/sign_up_entity.dart';
import '../../models/user_model.dart';
import 'auth_remote_ds.dart';

class AuthRemoteDsImpl implements AuthRemoteDs {
  ApiManager apiManager;

  AuthRemoteDsImpl(this.apiManager);

  @override
  Future<bool> signIn(String email, String password) async {
    try {
      final response = await apiManager.postData(
          endPoint: EndPoints.signIn,
          body: {"email": email, "password": password});

      if (response.statusCode == StatusCodes.success) {

      bool set=  await CacheHelper.setData<String>("token", response.data['token']);
        String? token = CacheHelper.getData<String>("token");

        print('ROute $set');
        print('ROute $token');
        return true;
      }
      return false;
    } catch (e) {
      throw RouteRemoteException(e.toString());
    }
  }

  @override
  Future<UserModel> signUp(SignUpEntity signUpEntity) async {
    try {
      var response = await apiManager.postData(
          endPoint: EndPoints.signUp, body: signUpEntity.toJson());

      UserModel userModel = UserModel.fromJson(response.data);
      return userModel;
    } catch (e) {
      print(e.toString());
      throw RouteRemoteException(e.toString());
    }
  }
}
