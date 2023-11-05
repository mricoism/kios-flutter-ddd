part of 'products_bloc.dart';

@freezed
class ProductsState with _$ProductsState {
  const factory ProductsState({
    required bool isLoading,
    required List<ProductItem> item,
    required Option<Either<ProductFailure, List<ProductItem>>> optionFailureOrSuccess,
  }) = _ProductsState;

  factory ProductsState.initial() => ProductsState(
      item: <ProductItem>[], isLoading: false, optionFailureOrSuccess: none());
}
