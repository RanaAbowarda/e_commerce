import 'package:dartz/dartz.dart';

import '../../../../core/exceptions/failuers.dart';
import '../../data/models/AddToCartModel.dart';

abstract class ProductDetailsRepo {
  Future<Either<RouteFailures, AddToCartModel>> addToCart(String prodId);
}
