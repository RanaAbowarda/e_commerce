import 'package:dartz/dartz.dart';

import '../../../../core/exceptions/failuers.dart';
import '../../data/models/CartModel.dart';

abstract class CartRepo {
  Future<Either<RouteFailures, CartModel>> getCartItems();
}
