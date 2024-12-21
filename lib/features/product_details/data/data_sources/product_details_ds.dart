
import 'package:injectable/injectable.dart';


import '../../../../core/api/api_manager.dart';
import '../../../../core/api/end_points.dart';
import '../../../../core/cache/shared_pref.dart';
import '../../../../di.dart';
import '../models/AddToCartModel.dart';

abstract class ProductDetailsDS {
  Future<AddToCartModel> addToCart(String prodId);
}

@Injectable(as: ProductDetailsDS)
class ProductDetailsDSImpl implements ProductDetailsDS {
  @override
  Future<AddToCartModel> addToCart(String prodId) async {
    var response =
        await getIt<ApiManager>().postData(endPoint: EndPoints.cart, body: {
      'productId': prodId
    }, headers: {
      'token': CacheHelper.getData<String>('token'),
    });

    AddToCartModel addToCartModel = AddToCartModel.fromJson(response.data);
    return addToCartModel;
  }
}
