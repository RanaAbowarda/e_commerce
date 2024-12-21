import 'package:dartz/dartz.dart';
import 'package:e_commerce/features/main_layout/home/data/models/category_model.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/exceptions/failuers.dart';
import '../repository/category_repository.dart';

@injectable
class GetCategoryUseCase {
  CategoryRepository repository;

  GetCategoryUseCase(this.repository);

  Future<Either<RouteFailures, CategoryModel>> call() =>
      repository.getCategory();
}
