import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:fpdart/src/either.dart';
import 'package:kios/3_domain/product_by_category/i_product_by_category_repo.dart';
import 'package:kios/3_domain/products/product_failure.dart';
import 'package:kios/4_infrastructure/core/network/i_network_service.dart';
import 'package:kios/4_infrastructure/core/network/network_service.dart';
import 'package:kios/4_infrastructure/products/product_item.dart';

class ProductByCategoryRepo implements iProductByCategoryRepo {
  final INetworkService _networkService = NetworkService();

  @override
  Future<Either<ProductFailure, List<ProductItem>>> getProductByCategory(
      ProductItem productItem) async {
    // TODO: implement getProductByCategory
    // throw UnimplementedError();

    debugPrint('\nflow ProductByCategoryRepo START');

    var response = await _networkService.getHttp(path: '/?categoryId=2&offset=0&limit=6');

    return response.match((l) {
      return left(const ProductFailure.noInternet());
    }, (r) {
      debugPrint('flow ProductByCategoryRepo has response');
      List datas = r as List;

      if (datas.isNotEmpty) {
        List<ProductItem> items =
            List<ProductItem>.from(datas.map((e) => ProductItem.fromJson(e)));
        items.removeWhere((element) => element.idy == productItem.idy);
        debugPrint('flow ProductByCategoryRepo Success to maaping json into list ProductItem');
        debugPrint('flow ProductByCategoryRepo END');
        return right(items);
      } else {
        debugPrint('flow ProductByCategoryRepo Fail to maaping json into list ProductItem'); 
        return left(const ProductFailure.failed());

      }
    });
  }
}
