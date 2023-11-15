part of 'products_bloc.dart';

@freezed
class ProductsState with _$ProductsState {
  const factory ProductsState({
    required bool isLoading,
    required bool isMoreLoading,
    required List<ProductItem> items,
    required Option<Either<ProductFailure, List<ProductItem>>> optionFailureOrSuccess,
  }) = _ProductsState;

  factory ProductsState.initial() => ProductsState(
      items: <ProductItem>[], isLoading: false, isMoreLoading: false, optionFailureOrSuccess: none());
}
