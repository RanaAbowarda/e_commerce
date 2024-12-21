
import 'package:e_commerce/features/main_layout/home/data/models/category_model.dart';


abstract class CategoryDS{

  Future<CategoryModel> getCategories();
}