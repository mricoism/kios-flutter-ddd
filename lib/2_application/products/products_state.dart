part of 'products_bloc.dart';

@freezed
class ProductsState with _$ProductsState {

  const factory ProductsState({
    required bool isLoading,
    required List<ProductItem> item,
  }) = _ProductsState;


  factory ProductsState.initial() => const ProductsState(item: <ProductItem>[], isLoading: false);
}
