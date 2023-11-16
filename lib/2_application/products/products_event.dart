part of 'products_bloc.dart';

@freezed
class ProductsEvent with _$ProductsEvent {
  const factory ProductsEvent.started() = _Started;
  const factory ProductsEvent.nextPage({required List<ProductItem> productItem}) = _NextPage;
  const factory ProductsEvent.search({required String keyword }) = _Search;
}