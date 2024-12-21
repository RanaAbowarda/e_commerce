import 'package:dartz/dartz.dart';

import '../../../../core/exceptions/failuers.dart';
import '../../data/models/ProductModel.dart';

abstract class ProductRepo {
  Future<Either<RouteFailures, ProductModel>> getProducts(String catId);
}
