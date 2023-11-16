
import 'package:fpdart/src/either.dart';
import 'package:kios/3_domain/core/failures.dart';
import 'package:kios/3_domain/core/value_object.dart';
import 'package:kios/4_infrastructure/products/product_item.dart';

class ProductSearch extends ValueObject<List<ProductItem>> {
  @override
  final Either<ValueFailure<List<ProductItem>>, List<ProductItem>> value;

  const ProductSearch._(this.value);

  factory ProductSearch({String? keyword, required List<ProductItem> itemToSearch}) {
    if (keyword == null || keyword.isEmpty || keyword == '') {
      return ProductSearch._(right(itemToSearch));
    } else {
      
      List<ProductItem> filter = itemToSearch.where((element) => element.title.toString().toLowerCase().contains(keyword)).toList();

      if (filter.length > 0) {
        return ProductSearch._(right(filter));
      } else {
        return ProductSearch._(left(ValueFailure.searchNotFound(keyword: keyword))); 
      }

    }
  }
  
}