import 'package:dartz/dartz.dart';

import 'package:injectable/injectable.dart';

import '../../../../core/exceptions/failuers.dart';
import '../../domain/repositories/product_repo.dart';
import '../data_sources/product_ds.dart';
import '../models/ProductModel.dart';

@Injectable(as: ProductRepo)
class ProductRepoImpl implements ProductRepo {
  ProductDS productDS;

  ProductRepoImpl(this.productDS);

  @override
  Future<Either<RouteFailures, ProductModel>> getProducts(String catId) async {
    try {
      var data = await productDS.getProducts(catId);
      return Right(data);
    } catch (e) {
      return Left(RouteRemoteFailures(e.toString()));
    }
  }
}
