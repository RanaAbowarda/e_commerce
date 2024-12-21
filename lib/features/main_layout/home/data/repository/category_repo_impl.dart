import 'package:dartz/dartz.dart';
import 'package:e_commerce/features/main_layout/home/data/dataSource/category_ds.dart';
import 'package:e_commerce/features/main_layout/home/data/models/category_model.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/exceptions/failuers.dart';
import '../../domain/repository/category_repository.dart';


@Injectable(as: CategoryRepository)
class CategoryRepoImpl implements CategoryRepository {
  CategoryDS categoryDS;

  CategoryRepoImpl(this.categoryDS);

  @override
  Future<Either<RouteFailures, CategoryModel>> getCategory() async {
    try {
      var data = await categoryDS.getCategories();

      return Right(data);
    } catch (e) {
      return Left(RouteRemoteFailures(e.toString()));
    }
  }
}
