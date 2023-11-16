import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kios/3_domain/core/common_utility.dart';
// import 'package:injectable/injectable.dart';
import 'package:kios/3_domain/products/i_product_repository.dart';
import 'package:kios/3_domain/products/product_failure.dart';
import 'package:kios/3_domain/products/product_object.dart';
import 'package:kios/4_infrastructure/products/product_item.dart';
import 'package:kios/4_infrastructure/products/product_repository.dart';
import 'package:stream_transform/stream_transform.dart';

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
      await events.when(


        // * STARTED
        started: () async {
          debugPrint('flow productBloc running when event start() triggered');
          emit(ProductsState.initial());
          emit(state.copyWith(isLoading: true));
          final Either<ProductFailure, List<ProductItem>> response =
              await productRepository.getProductData();
              List<ProductItem> items = state.items;
          //List<ProductItem> items = state.item; // in this case not really needed
          Either<ProductFailure, ProductSearch> either =
              response.match((l) => left(l), (r) {
                items = r;
                return right(ProductSearch(itemToSearch: items));
                });
          debugPrint(
              'flow productBloc after get productRepository.getProductData() )');
          response.fold((_) {
            debugPrint('flow productBloc fail to get data');
          }, (products) {
            debugPrint('flow productBloc success to load data');
            emit(state.copyWith(
                items: products,
                isLoading: false,
                optionFailureOrSuccess: optionOf(either)));
          });
          debugPrint('flow productBloc END');
        },



        // * NEXT PAGE
        nextPage: (thisProductItem) async {
          debugPrint(
              'flow productBloc Event nextPage running when load more data');

          emit(state.copyWith(isMoreLoading: true));

          int _offset = CommonUtils.offsetValidator(thisProductItem.length);
          print('hws c 1 $_offset');
          final Either<ProductFailure, List<ProductItem>> response =
              await productRepository.getProductDataWithOffset(offset: _offset);
          
          print('hws a 1 ${response}');
          List<ProductItem> items = state.items;

          Either<ProductFailure, ProductSearch> either =
              response.match((l) {
            debugPrint('flow productBloc Event nextPage fail to get data (response.match)');
            return left(l);
          }, (r) {
            emit(state.copyWith(isMoreLoading: false));
            debugPrint('flow productBloc Event nextPage success to load data');
            var newList = List<ProductItem>.from(thisProductItem)..addAll(r);
            return right(ProductSearch(itemToSearch: newList));
          });

          response.fold((_) {
            emit(state.copyWith(isMoreLoading: false));
            debugPrint('flow productBloc Event nextPage fail to get data (response.fold)');
          }, (r) {
            debugPrint('flow productBloc Event nextPage success to load data');
            var newList = List<ProductItem>.from(thisProductItem)..addAll(r);
            emit(state.copyWith(isMoreLoading: false));
            emit(
              state.copyWith(
                items: newList,
                optionFailureOrSuccess: optionOf(either),
                // optionMoreLoading: optionOf(either)
              ),
            );
          });
        },



        // * SEARCH
        search: (String keyword) async {
          print('hws a 1 $keyword');

          Either<ProductFailure, ProductSearch> either =
              Either<ProductFailure, ProductSearch>.of(
                  ProductSearch(itemToSearch: state.items, keyword: keyword));
          emit(state.copyWith(optionFailureOrSuccess: optionOf(either), check: keyword));

          
        },

        
      );
    },
    
    transformer: debouncing(),
    );
  }
  
  // debounce() {}

  EventTransformer<ProductsEvent> debouncing<ProductsEvent>() {
    return (events, mapper) {
      final Stream<ProductsEvent> nonbounceStream =
          events.where((event) => event is! _Search);
      final Stream<ProductsEvent> debounceStream = events
          .where((event) => event is _Search).debounce(const Duration(milliseconds: 300));
      return nonbounceStream.merge(debounceStream).switchMap(mapper);
    };
  }
  
}
