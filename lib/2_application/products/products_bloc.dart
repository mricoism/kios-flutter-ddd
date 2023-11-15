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
    int _offset = 0;

    final IProductRepository productRepository = ProductRepository();
    debugPrint('flow productBloc after initial ProductRepository()');

    on<ProductsEvent>((events, emit) async {
      await events.when(
        started: () async {
          debugPrint('flow productBloc running when event start() triggered');
          emit(ProductsState.initial());
          emit(state.copyWith(isLoading: true));
          final Either<ProductFailure, List<ProductItem>> failureOrProduct =
              await productRepository.getProductData();
          //List<ProductItem> items = state.item; // in this case not really needed
          Either<ProductFailure, List<ProductItem>> either =
              failureOrProduct.match((l) => left(l), (r) => right(r));
          debugPrint(
              'flow productBloc after get productRepository.getProductData() )');
          failureOrProduct.fold((_) {
            debugPrint('flow productBloc fail to get data');
          }, (products) {
            debugPrint('flow productBloc success to load data');
            emit(state.copyWith(
                items: products,
                isLoading: false,
                optionFailureOrSuccess: optionOf(either)));
          });
          debugPrint('flow productBloc END');
          // print('RESULTS:  $failureOrProduct');
        },
        nextPage: (thisProductItem) async {
          emit(state.copyWith(isMoreLoading: true));
          // List<ProductItem> items = products;
          // _offset = products.length + 10;
          debugPrint('hws N 0.1');
          print('hws p 2 ${thisProductItem.length}');
          final _offset = thisProductItem.length;

          final Either<ProductFailure, List<ProductItem>> failureOrProduct =
              await productRepository.getProductDataWithOffset(offset: _offset);
          //List<ProductItem> items = state.item; // in this case not really needed
          // products.addAll();

          debugPrint('hws N 0.2 | ${thisProductItem.length}');
          Either<ProductFailure, List<ProductItem>> either =
              failureOrProduct.match((l) {
                debugPrint('hws N 0.3');
                return left(l);
                
                }, (r) {
                  debugPrint('hws N 0.4 ${r.length}');
                  // products.toList().addAll(r);
                  
                  var newList = List<ProductItem>.from(thisProductItem)..addAll(r);
                  print('hws p 3 ${thisProductItem.length}');
                // List<ProductItem> tempValue = thisProductItem;
                // tempValue.addAll(r);
                debugPrint('hws N 0.5');
                return right(newList);
              });
          debugPrint('hws N 1');
          failureOrProduct.fold((_) {
            debugPrint('hws N 2');
            debugPrint('flow productBloc fail to get data');
          }, (r) {
            debugPrint('hws N 3 ${thisProductItem.length} | ${r.length}');
            debugPrint('flow productBloc success to load data');
            var newList = List<ProductItem>.from(thisProductItem)..addAll(r);
            // products.toList().addAll(r);
            print('hws p 4 ${thisProductItem.length}');
            debugPrint('hws N 4 ${newList.length}');
            emit(state.copyWith(isMoreLoading: false));
            emit(
              state.copyWith(
                items: newList,
                optionFailureOrSuccess: optionOf(either),
              ),
            );
          });

          

          print('hws m 2');
          // items.addAll(products);
          print('hws l 3 $_offset |');
          print('JALAN CODENYA ');
        },
      );

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
