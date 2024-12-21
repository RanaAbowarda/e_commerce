import 'package:dartz/dartz.dart';

import '../../../../../core/exceptions/failuers.dart';
import '../../../home/data/models/category_model.dart';

abstract class CategoryRepo{


 Future<Either<RouteFailures,CategoryModel>> getSubCategories(String catId);
}