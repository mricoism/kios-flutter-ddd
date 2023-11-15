import 'package:flutter/material.dart';
import 'package:fpdart/src/either.dart';
// import 'package:injectable/injectable.dart';
import 'package:kios/3_domain/products/i_product_repository.dart';
import 'package:kios/3_domain/products/product_failure.dart';
import 'package:kios/4_infrastructure/core/network/i_network_service.dart';
import 'package:kios/4_infrastructure/core/network/network_service.dart';
import 'package:kios/4_infrastructure/products/product_item.dart';

// @LazySingleton(as: IProductRepository)
class ProductRepository implements IProductRepository {
  final INetworkService _networkService = NetworkService();

  // ProductRepository._(this._networkService);

  @override
  Future<Either<ProductFailure, List<ProductItem>>> getProductData() async {
    debugPrint('flow ProductRepository START');
    var response = await _networkService.getHttp(path: '?offset=0&limit=10');

    return response.match((l) {
      return left(const ProductFailure.failed());
    }, (r) {
      debugPrint('flow ProductRepository has response');
      List datas = r as List;
      if (datas.isNotEmpty) {
        List<ProductItem> items =
            List<ProductItem>.from(datas.map((e) => ProductItem.fromJson(e)));

        debugPrint(
            'flow ProductRepository Success to maaping json into list ProductItem');
        debugPrint('flow ProductRepository END');
        return right(items);
      }
      debugPrint(
          'flow ProductRepository Fail to maaping json into list ProductItem');
      return left(const ProductFailure.failed());
    });
  }

  @override
  Future<Either<ProductFailure, List<ProductItem>>> getProductDataWithOffset(
      {required int offset}) async {
    // TODO: implement getProductDataWithOffset
    var response =
        await _networkService.getHttp(path: '?offset=$offset&limit=10');

    return response.match((l) {
      return left(const ProductFailure.failed());
    }, (r) {
      List datas = r as List;

      if (datas.isNotEmpty) {
        List<ProductItem> items =
            List<ProductItem>.from(datas.map((e) => ProductItem.fromJson(e)));
        return right(items);
      }
      return left(const ProductFailure.failed());
    });
  }
}
