import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
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
    debugPrint('flow productBloc START');

    final IProductRepository productRepository = ProductRepository();
    debugPrint('flow productBloc after initial ProductRepository()');

    on<ProductsEvent>((events, emit) async {
      
      await events.when(started: () async {
        debugPrint('flow productBloc running when event start() triggered');
        emit(ProductsState.initial());
        emit(state.copyWith(isLoading: true));
        final Either<ProductFailure, List<ProductItem>> failureOrProduct = await productRepository.getProductData();
        //List<ProductItem> items = state.item; // in this case not really needed
        Either<ProductFailure, List<ProductItem>> either = failureOrProduct.match((l) => left(l), (r) => right(r));
        debugPrint('flow productBloc after get productRepository.getProductData() )');
        failureOrProduct.fold((_) {
          debugPrint('flow productBloc fail to get data');
        }, (products) {
          debugPrint('flow productBloc success to load data');
          emit(state.copyWith(item: products, isLoading: false, optionFailureOrSuccess: optionOf(either)));
        });
        debugPrint('flow productBloc END');
        // print('RESULTS:  $failureOrProduct');
      }, nextPage: () { 
        
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
