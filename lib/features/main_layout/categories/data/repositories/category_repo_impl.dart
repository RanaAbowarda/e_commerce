import 'package:dartz/dartz.dart';
import 'package:e_commerce/features/main_layout/categories/data/data_sources/category_ds.dart';
import 'package:e_commerce/features/main_layout/home/data/models/category_model.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/exceptions/failuers.dart';
import '../../domain/repositories/category_repo.dart';

@Injectable(as: CategoryRepo)
class CategoryRepoImpl implements CategoryRepo {
  CategoryDS categoryDS;

  CategoryRepoImpl(this.categoryDS);

  @override
  Future<Either<RouteFailures, CategoryModel>> getSubCategories(
      String catId) async {
    try {
      var data = await categoryDS.getSubCategories(catId);
      return Right(data);
    } catch (e) {
      return Left(RouteRemoteFailures(e.toString()));
    }
  }
}
