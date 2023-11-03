import 'package:bloc/bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:injectable/injectable.dart';
import 'package:kios/3_domain/products/i_product_repository.dart';
import 'package:kios/3_domain/products/product_failure.dart';
import 'package:kios/4_infrastructure/products/product_item.dart';
import 'package:kios/4_infrastructure/products/product_repository.dart';

part 'products_event.dart';
part 'products_state.dart';
part 'products_bloc.freezed.dart';

// @injectable
class ProductsBloc extends Bloc<ProductsEvent, ProductsState> {
  
  
  ProductsBloc() : super(ProductsState.initial()) {
    print("Riko A");

    final IProductRepository productRepository = ProductRepository();
    print("Riko B");
    on<ProductsEvent>((events, emit) async {

      await events.when(started: () async {
        emit(ProductsState.initial());
        emit(state.copyWith(isLoading: true));
        final Either<ProductFailure, List<ProductItem>> failureOrProduct = await productRepository.getProductData();
        List<ProductItem> items = state.item;
        failureOrProduct.fold((_) {
          print('Something wrong about this');
        }, (products) {
          // print('perfects $products | | | $items ');
          emit(state.copyWith(item: products, isLoading: false));
        });
        print('RESULTS:  $failureOrProduct');

      },);




      
      // print("Riko C");
      // emit(ProductsState.initial());
      // emit(state.copyWith(isLoading: true));
      // print("HEYYYY");
      // final Either<ProductFailure, List<ProductItem>> failureOrProduct = await productRepository.getProductData();
      // List<ProductItem> items = state.item;
      // failureOrProduct.fold((_) {
      //   print('Something wrong about this');
      // }, (products) {
      //   print('perfects $products | | | $items ');
      //   emit(state.copyWith(item: products));
      // });
      // // failureOrProduct.match((l) => left(ProductFailure.failed()), (r) => );
      // emit(state.copyWith(isLoading: false));

      // print('RESULTS:  $failureOrProduct');
      
    });
  }
}
