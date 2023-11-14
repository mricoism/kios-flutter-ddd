

import 'package:fpdart/fpdart.dart';
import 'package:kios/3_domain/products/product_failure.dart';
import 'package:kios/4_infrastructure/products/product_item.dart';

abstract class iProductByCategoryRepo {
  Future<Either<ProductFailure, List<ProductItem>>> getProductByCategory(ProductItem productItem);
}