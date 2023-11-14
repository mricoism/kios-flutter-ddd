part of 'product_by_category_bloc.dart';

@freezed
class ProductByCategoryState with _$ProductByCategoryState {
  const factory ProductByCategoryState({
    required List<ProductItem> items,
    required Option<Either<ProductFailure, List<ProductItem>>>
          optionFailedOrSuccess
  }) = _CategoryState;

  factory ProductByCategoryState.initial() => ProductByCategoryState(items: <ProductItem>[], optionFailedOrSuccess: none());
}
