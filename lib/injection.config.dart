// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter/material.dart' as _i8;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:kios/2_application/product_by_category/product_by_category_bloc.dart'
    as _i9;
import 'package:kios/2_application/products/products_bloc.dart' as _i10;
import 'package:kios/3_domain/product_by_category/i_product_by_category_repo.dart'
    as _i3;
import 'package:kios/3_domain/products/i_product_repository.dart' as _i5;
import 'package:kios/4_infrastructure/product_by_category/product_by_category_repo.dart'
    as _i4;
import 'package:kios/4_infrastructure/products/product_repository.dart' as _i6;
import 'package:kios/main.dart' as _i7;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.IProductByCategoryRepo>(
        () => _i4.ProductByCategoryRepo());
    gh.lazySingleton<_i5.IProductRepository>(() => _i6.ProductRepository());
    gh.factory<_i7.MyApp>(() => _i7.MyApp(key: gh<_i8.Key>()));
    gh.factory<_i9.ProductByCategoryBloc>(
        () => _i9.ProductByCategoryBloc(gh<_i3.IProductByCategoryRepo>()));
    gh.factory<_i10.ProductsBloc>(
        () => _i10.ProductsBloc(gh<_i5.IProductRepository>()));
    return this;
  }
}
