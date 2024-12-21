
import 'package:e_commerce/features/main_layout/home/data/dataSource/category_ds.dart';
import 'package:e_commerce/features/main_layout/home/data/models/category_model.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/api/api_manager.dart';
import '../../../../../core/api/end_points.dart';
import '../../../../../core/exceptions/exceptions.dart';
import '../../../../../di.dart';

@Injectable(as: CategoryDS)
class CategoryDSImpl implements CategoryDS {


  @override
  Future<CategoryModel> getCategories() async {
    try {
      var response = await getIt<ApiManager>().getData(endPoint: EndPoints.category);

      CategoryModel categoryModel = CategoryModel.fromJson(response.data);
      return categoryModel;
    } catch (e) {
      throw RouteRemoteException(e.toString());
    }
  }

}
