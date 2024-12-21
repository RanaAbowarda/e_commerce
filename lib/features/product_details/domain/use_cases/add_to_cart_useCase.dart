import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/exceptions/failuers.dart';
import '../../data/models/AddToCartModel.dart';
import '../repositories/product_details_repo.dart';

@injectable
class AddToCartUseCase {
  ProductDetailsRepo repository;

  AddToCartUseCase(this.repository);

  Future<Either<RouteFailures, AddToCartModel>> call(String prodId) =>
      repository.addToCart(prodId);
}
