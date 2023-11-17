import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kios/3_domain/product_by_category/i_product_by_category_repo.dart';
import 'package:kios/3_domain/products/product_failure.dart';
import 'package:kios/4_infrastructure/product_by_category/product_by_category_repo.dart';
import 'package:kios/4_infrastructure/products/product_item.dart';

part 'product_by_category_event.dart';
part 'product_by_category_state.dart';
part 'product_by_category_bloc.freezed.dart';

@injectable
class ProductByCategoryBloc
    extends Bloc<ProductByCategoryEvent, ProductByCategoryState> {
  // final IProductByCategoryRepo prodByCatRepo = ProductByCategoryRepo();
    final IProductByCategoryRepo prodByCatRepo;
  ProductByCategoryBloc(this.prodByCatRepo) : super(ProductByCategoryState.initial()) {
    debugPrint('flow ProductByCategoryBloc START');


    on<ProductByCategoryEvent>((event, emit) async {
      // TODO: implement event handler

      await event.when(
        started: (productItem) async {
          debugPrint('flow ProductByCategoryBloc Id: ${productItem.idy}');
          emit(ProductByCategoryState.initial());
          final Either<ProductFailure, List<ProductItem>> response =
              await prodByCatRepo.getProductByCategory(productItem);

          Either<ProductFailure, List<ProductItem>> either =
              response.match((l) => left(l), (r) => right(r));
          response.fold((l) {
            debugPrint('flow ProductByCategoryBloc fail to get data $l');
          }, (products) {
            debugPrint('flow ProductByCategoryBloc success to load data');
            emit(state.copyWith(
                items: products, optionFailedOrSuccess: optionOf(either)));
          });
          debugPrint('flow ProductByCategoryBloc END');
        },
      );
    });
  }
}
