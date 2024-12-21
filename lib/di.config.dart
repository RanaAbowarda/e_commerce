// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import 'core/api/api_manager.dart' as _i237;
import 'features/cart/data/data_sources/car_ds.dart' as _i157;
import 'features/cart/data/repositories/cart_repo_impl.dart' as _i305;
import 'features/cart/domain/repositories/cart_repo.dart' as _i361;
import 'features/cart/domain/use_cases/get_cart_items_usecase.dart' as _i842;
import 'features/cart/presentation/bloc/cart_bloc.dart' as _i239;
import 'features/main_layout/categories/data/data_sources/category_ds.dart'
    as _i847;
import 'features/main_layout/categories/data/repositories/category_repo_impl.dart'
    as _i755;
import 'features/main_layout/categories/domain/repositories/category_repo.dart'
    as _i94;
import 'features/main_layout/categories/domain/use_cases/get_sub_category_usecase.dart'
    as _i1014;
import 'features/main_layout/categories/presentation/bloc/category_bloc.dart'
    as _i916;
import 'features/main_layout/home/data/dataSource/category_ds.dart' as _i564;
import 'features/main_layout/home/data/dataSource/category_ds_impl.dart'
    as _i1012;
import 'features/main_layout/home/data/repository/category_repo_impl.dart'
    as _i555;
import 'features/main_layout/home/domain/repository/category_repository.dart'
    as _i96;
import 'features/main_layout/home/domain/usecases/get_category_usecase.dart'
    as _i441;
import 'features/main_layout/home/presentation/bloc/category_bloc.dart'
    as _i334;
import 'features/product_details/data/data_sources/product_details_ds.dart'
    as _i122;
import 'features/product_details/data/repositories/product_repo_impl.dart'
    as _i292;
import 'features/product_details/domain/repositories/product_details_repo.dart'
    as _i9;
import 'features/product_details/domain/use_cases/add_to_cart_useCase.dart'
    as _i493;
import 'features/product_details/presentation/bloc/product_details_bloc.dart'
    as _i466;
import 'features/products_screen/data/data_sources/product_ds.dart' as _i941;
import 'features/products_screen/data/repositories/product_repo_impl.dart'
    as _i977;
import 'features/products_screen/domain/repositories/product_repo.dart'
    as _i948;
import 'features/products_screen/domain/use_cases/get_products_usecase.dart'
    as _i843;
import 'features/products_screen/presentation/bloc/product_bloc.dart' as _i477;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i237.ApiManager>(() => _i237.ApiManager());
    gh.factory<_i941.ProductDS>(() => _i941.ProductDSImpl());
    gh.factory<_i847.CategoryDS>(() => _i847.CategoryDSImpl());
    gh.factory<_i564.CategoryDS>(() => _i1012.CategoryDSImpl());
    gh.factory<_i122.ProductDetailsDS>(() => _i122.ProductDetailsDSImpl());
    gh.factory<_i157.CartDS>(() => _i157.CartDSImpl());
    gh.factory<_i948.ProductRepo>(
        () => _i977.ProductRepoImpl(gh<_i941.ProductDS>()));
    gh.factory<_i96.CategoryRepository>(
        () => _i555.CategoryRepoImpl(gh<_i564.CategoryDS>()));
    gh.factory<_i94.CategoryRepo>(
        () => _i755.CategoryRepoImpl(gh<_i847.CategoryDS>()));
    gh.factory<_i843.GetProductsUseCase>(
        () => _i843.GetProductsUseCase(gh<_i948.ProductRepo>()));
    gh.factory<_i9.ProductDetailsRepo>(
        () => _i292.ProductDetailsRepoImpl(gh<_i122.ProductDetailsDS>()));
    gh.factory<_i361.CartRepo>(() => _i305.CartRepoImpl(gh<_i157.CartDS>()));
    gh.factory<_i493.AddToCartUseCase>(
        () => _i493.AddToCartUseCase(gh<_i9.ProductDetailsRepo>()));
    gh.factory<_i477.ProductBloc>(
        () => _i477.ProductBloc(gh<_i843.GetProductsUseCase>()));
    gh.factory<_i842.GetCartItemsUseCase>(
        () => _i842.GetCartItemsUseCase(gh<_i361.CartRepo>()));
    gh.factory<_i1014.GetSubCategoryUseCase>(
        () => _i1014.GetSubCategoryUseCase(gh<_i94.CategoryRepo>()));
    gh.factory<_i239.CartBloc>(
        () => _i239.CartBloc(gh<_i842.GetCartItemsUseCase>()));
    gh.factory<_i441.GetCategoryUseCase>(
        () => _i441.GetCategoryUseCase(gh<_i96.CategoryRepository>()));
    gh.factory<_i466.ProductDetailsBloc>(
        () => _i466.ProductDetailsBloc(gh<_i493.AddToCartUseCase>()));
    gh.factory<_i916.CategoryBloc>(() => _i916.CategoryBloc(
          gh<_i441.GetCategoryUseCase>(),
          gh<_i1014.GetSubCategoryUseCase>(),
        ));
    gh.factory<_i334.HomeBloc>(
        () => _i334.HomeBloc(gh<_i441.GetCategoryUseCase>()));
    return this;
  }
}
