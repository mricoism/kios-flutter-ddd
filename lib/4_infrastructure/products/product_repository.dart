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
    // var response = await _networkService.getHttp(path: '?limit=10');
    var response = await _networkService.getHttp(path: '?offset=0&limit=10');
    

    return response.match((l) {
      return left(const ProductFailure.failed());
    }, (r) {
      debugPrint('flow ProductRepository has response');
      print('hws f $r');
      List datas = r as List;
      print('\n\n');
      print('hws f $datas');
      
      if (datas.isNotEmpty) {
            List<ProductItem> items =
            List<ProductItem>.from(datas.map((e) => ProductItem.fromJson(e)));



            
             debugPrint('flow ProductRepository Success to maaping json into list ProductItem'); 
        debugPrint('flow ProductRepository END'); 
        return right(items);
      }
      debugPrint('flow ProductRepository Fail to maaping json into list ProductItem'); 
      return left(const ProductFailure.failed());
    });
  }
  
  @override
  Future<Either<ProductFailure, List<ProductItem>>> getProductDataWithOffset({required int offset}) async {
    // TODO: implement getProductDataWithOffset
    print("hws o 1");
    // var response = await _networkService.getHttp(path: '?limit=10');
    var response = await _networkService.getHttp(path: '?offset=$offset&limit=10');
    print("hws o 2");

    return response.match((l) {
      print("hws o 3");
      return left(const ProductFailure.failed());
    }, (r) {
      List datas = r as List;
      
      if (datas.isNotEmpty) {
        print("hws o 4");
            List<ProductItem> items =
            List<ProductItem>.from(datas.map((e) => ProductItem.fromJson(e)));
      print("hws o 5");
        return right(items);
      }
      print("hws o 6");
      return left(const ProductFailure.failed());
    });
  }
}
