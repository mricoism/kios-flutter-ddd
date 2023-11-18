// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter/material.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:kios/2_application/product_by_category/product_by_category_bloc.dart'
    as _i10;
import 'package:kios/2_application/products/products_bloc.dart' as _i11;
import 'package:kios/3_domain/product_by_category/i_product_by_category_repo.dart'
    as _i6;
import 'package:kios/3_domain/products/i_product_repository.dart' as _i8;
import 'package:kios/4_infrastructure/core/network/i_network_service.dart'
    as _i5;
import 'package:kios/4_infrastructure/core/register_module.dart' as _i12;
import 'package:kios/4_infrastructure/product_by_category/product_by_category_repo.dart'
    as _i7;
import 'package:kios/4_infrastructure/products/product_repository.dart' as _i9;
import 'package:kios/main.dart' as _i3;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.factory<_i3.MyApp>(() => _i3.MyApp(key: gh<_i4.Key>()));
    gh.factory<String>(
      () => registerModule.baseUrl,
      instanceName: 'baseUrl',
    );
    await gh.lazySingletonAsync<_i5.INetworkService>(
      () => registerModule.network(gh<String>(instanceName: 'baseUrl')),
      preResolve: true,
    );
    gh.lazySingleton<_i6.IProductByCategoryRepo>(
        () => _i7.ProductByCategoryRepo(gh<_i5.INetworkService>()));
    gh.lazySingleton<_i8.IProductRepository>(
        () => _i9.ProductRepository(gh<_i5.INetworkService>()));
    gh.factory<_i10.ProductByCategoryBloc>(
        () => _i10.ProductByCategoryBloc(gh<_i6.IProductByCategoryRepo>()));
    gh.factory<_i11.ProductsBloc>(
        () => _i11.ProductsBloc(gh<_i8.IProductRepository>()));
    return this;
  }
}

class _$RegisterModule extends _i12.RegisterModule {}
