


import 'package:flutter/material.dart';
import 'package:fpdart/src/either.dart';
import 'package:kios/3_domain/categories/category_failure.dart';
import 'package:kios/3_domain/categories/i_category_repository.dart';
import 'package:kios/4_infrastructure/categories/category_item.dart';
import 'package:kios/4_infrastructure/core/network/i_network_service.dart';
import 'package:kios/4_infrastructure/core/network/network_service.dart';
import 'package:kios/4_infrastructure/products/product_item.dart';

class CategoryRepository implements ICategoryRepository {
  final INetworkService _networkService = NetworkService();

  @override
  Future<Either<CategoryFailure, List<CategoryItem>>> getCategory(ProductItem productItem) async {
    debugPrint('\nflow CategoryRepository START');
    var response = await _networkService.getHttp(path: '/category/${productItem.category}?limit=3');

    return response.match((l) {
      return left(const CategoryFailure.noInternet());
    }, (r) {
      debugPrint('flow CategoryRepository has response');
      List datas = r as List;
      if (datas.isNotEmpty) {
        List<CategoryItem> items =  List<CategoryItem>.from(datas.map((e) => CategoryItem.fromJson(e)));
        print("hws b before | $items");
        items.removeWhere((element) => element.idy == productItem.idy); // ! Mencegah duplicate
        print("hws b after  | $items");
        debugPrint(
            'flow CategoryRepository Success to maaping json into list ProductItem');
        debugPrint('flow CategoryRepository END');

        return right(items);
      } else {
        debugPrint(
            'flow CategoryRepository Fail to maaping json into list ProductItem');
        return left(const CategoryFailure.failed());
      }
    });
  }
  
}