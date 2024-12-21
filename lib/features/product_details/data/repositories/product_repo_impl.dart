import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/exceptions/failuers.dart';
import '../../domain/repositories/product_details_repo.dart';
import '../data_sources/product_details_ds.dart';
import '../models/AddToCartModel.dart';

@Injectable(as: ProductDetailsRepo)
class ProductDetailsRepoImpl implements ProductDetailsRepo {
  ProductDetailsDS productDetailsDS;

  ProductDetailsRepoImpl(this.productDetailsDS);

  @override
  Future<Either<RouteFailures, AddToCartModel>> addToCart(String prodId) async {
    try {
      var data = await productDetailsDS.addToCart(prodId);
      return Right(data);
    } catch (e) {
      return Left(RouteRemoteFailures(e.toString()));
    }
  }
}
