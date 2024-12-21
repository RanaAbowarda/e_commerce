
import 'package:e_commerce/di.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/api/api_manager.dart';
import '../../../../../core/api/end_points.dart';

import '../../../home/data/models/category_model.dart';

abstract class CategoryDS {
  Future<CategoryModel> getSubCategories(String catId);
}

@Injectable(as: CategoryDS)
class CategoryDSImpl implements CategoryDS {
  @override
  Future<CategoryModel> getSubCategories(String catId) async {
    var response = await getIt<ApiManager>()
        .getData(endPoint: "${EndPoints.category}/$catId/subcategories");

    CategoryModel subCatModel = CategoryModel.fromJson(response.data);
    return subCatModel;
  }
}
