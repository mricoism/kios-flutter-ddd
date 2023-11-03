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
    print('RIKO YAY');
    var response = await _networkService.getHttp(path: '?limit=5');

    return response.match((l) {
      return left(const ProductFailure.failed());
    }, (r) {
      print('\n NARUTO: $r');
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
