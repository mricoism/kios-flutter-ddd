part of 'product_by_category_bloc.dart';

@freezed
class ProductByCategoryEvent with _$ProductByCategoryEvent {
  const factory ProductByCategoryEvent.started({required ProductItem productItem}) = _Started;
}