part of 'products_bloc.dart';

@freezed
class ProductsState with _$ProductsState {
  const factory ProductsState({
    required bool isLoading,
    required bool isMoreLoading,
    required String check,
    required List<ProductItem> items,
    required Option<Either<ProductFailure, ProductSearch>> optionFailureOrSuccess,
    required Option<Either<ProductFailure, bool>> optionMoreLoading,
  }) = _ProductsState;

  factory ProductsState.initial() => ProductsState(
      items: <ProductItem>[], check: '', isLoading: false, isMoreLoading: false, optionFailureOrSuccess: none(), optionMoreLoading: none());
}
