
import 'package:injectable/injectable.dart';

import '../../../../core/api/api_manager.dart';
import '../../../../core/api/end_points.dart';
import '../../../../di.dart';
import '../models/ProductModel.dart';

abstract class ProductDS {
  Future<ProductModel> getProducts(String catId);
}

@Injectable(as: ProductDS)
class ProductDSImpl implements ProductDS {
  @override
  Future<ProductModel> getProducts(String catId) async {
    var response = await getIt<ApiManager>().getData(
        endPoint: EndPoints.products, param: {'category[in]': catId});

    ProductModel productModel = ProductModel.fromJson(response.data);
    return productModel;
  }
}
