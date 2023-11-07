part of 'detail_product_bloc.dart';

@freezed
class DetailProductState with _$DetailProductState {
  const factory DetailProductState.initial() = _Initial;
  const factory DetailProductState.loading() = _Loading;
  const factory DetailProductState.loaded({required Option<Either<DetailProductFailure, ProductItem>> optionFailedOrSuccess}) = _Loaded;
}
