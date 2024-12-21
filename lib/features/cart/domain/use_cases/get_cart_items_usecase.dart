import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/exceptions/failuers.dart';
import '../../data/models/CartModel.dart';
import '../repositories/cart_repo.dart';

@injectable
class GetCartItemsUseCase {
  CartRepo repository;

  GetCartItemsUseCase(this.repository);

  Future<Either<RouteFailures, CartModel>> call() => repository.getCartItems();
}
