// import 'package:flutter/material.dart';
// import 'package:fpdart/src/either.dart';
// import 'package:kios/3_domain/detail_product/detail_product_failure.dart';
// import 'package:kios/3_domain/detail_product/i_detail_product_repository.dart';
// import 'package:kios/4_infrastructure/core/network/i_network_service.dart';
// import 'package:kios/4_infrastructure/core/network/network_service.dart';
// import 'package:kios/4_infrastructure/products/product_item.dart';

// class DetailProductRepository implements IDetailProductRepository {
//   final INetworkService _networkService = NetworkService();
  
//   @override
//   Future<Either<DetailProductFailure, ProductItem>> getDetailProduct(int idy) {
//     // TODO: implement getDetailProduct
//     throw UnimplementedError();
//   }

//   // @override
//   // Future<Either<DetailProductFailure, ProductItem>> getDetailProduct(
//   //     int idy) async {
//   //   debugPrint('\nflow DetailProductRepository START');

//   //   var response = await _networkService.getHttp(path: '/$idy');

//   //   return response.match((l) {
//   //     return left(const DetailProductFailure.noInternet());
//   //   }, (r) {
//   //     debugPrint('flow DetailProductRepository has response');
//   //     var data = r;
//   //     if (data.isNotEmpty) {
//   //       ProductItem item =
//   //           ProductItem.fromJson(data);
//   //       debugPrint(
//   //           'flow DetailProductRepository Success to maaping json into list ProductItem');
//   //       debugPrint('flow DetailProductRepository END');
//   //       return right(item);
//   //     } else {
//   //       debugPrint(
//   //           'flow DetailProductRepository Fail to maaping json into list ProductItem');
//   //       return left(DetailProductFailure.failed());
//   //     }
//   //   });
//   // }
// }
