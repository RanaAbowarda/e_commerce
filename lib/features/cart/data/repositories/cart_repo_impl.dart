import 'package:dartz/dartz.dart';

import 'package:injectable/injectable.dart';

import '../../../../core/exceptions/failuers.dart';
import '../../domain/repositories/cart_repo.dart';
import '../data_sources/car_ds.dart';
import '../models/CartModel.dart';

@Injectable(as: CartRepo)
class CartRepoImpl implements CartRepo {
  CartDS cartDS;

  CartRepoImpl(this.cartDS);

  @override
  Future<Either<RouteFailures, CartModel>> getCartItems() async {
    try {
      var data = await cartDS.getCartItems();
      return Right(data);
    } catch (e) {
      return Left(RouteRemoteFailures(e.toString()));
    }
  }
}
