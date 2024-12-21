import 'package:dartz/dartz.dart';

import 'package:injectable/injectable.dart';

import '../../../../core/exceptions/failuers.dart';
import '../../data/models/ProductModel.dart';
import '../repositories/product_repo.dart';

@injectable
class GetProductsUseCase {
  ProductRepo repository;

  GetProductsUseCase(this.repository);

  Future<Either<RouteFailures, ProductModel>> call(String catId) =>
      repository.getProducts(catId);
}
