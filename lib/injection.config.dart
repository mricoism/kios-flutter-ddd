// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter/material.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:kios/2_application/products/products_bloc.dart' as _i7;
import 'package:kios/3_domain/products/i_product_repository.dart' as _i3;
import 'package:kios/4_infrastructure/products/product_repository.dart' as _i4;
import 'package:kios/main.dart' as _i5;

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
    gh.lazySingleton<_i3.IProductRepository>(() => _i4.ProductRepository());
    gh.factory<_i5.MyApp>(() => _i5.MyApp(key: gh<_i6.Key>()));
    gh.factory<_i7.ProductsBloc>(
        () => _i7.ProductsBloc(gh<_i3.IProductRepository>()));
    return this;
  }
}
