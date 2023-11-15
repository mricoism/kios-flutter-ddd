// import 'package:bloc/bloc.dart';
// import 'package:flutter/material.dart';
// import 'package:fpdart/fpdart.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// // import 'package:kios/2_application/products/products_bloc.dart';
// import 'package:kios/3_domain/detail_product/detail_product_failure.dart';
// import 'package:kios/3_domain/detail_product/i_detail_product_repository.dart';
// import 'package:kios/4_infrastructure/detail_product/detail_product_repository.dart';
// import 'package:kios/4_infrastructure/products/product_item.dart';

// part 'detail_product_event.dart';
// part 'detail_product_state.dart';
// part 'detail_product_bloc.freezed.dart';

// class DetailProductBloc extends Bloc<DetailProductEvent, DetailProductState> {
  

//   DetailProductBloc() : super(DetailProductState.initial()) {
//     debugPrint('flow DetailProductBloc START');
//     final IDetailProductRepository detailProductRepository = DetailProductRepository();

//     on<DetailProductEvent>((event, emit) async {
//       await event.when(started: (idy) async {
//         debugPrint('flow DetailProductBloc Id: $idy');
//         emit(const DetailProductState.initial());
//         final Either<DetailProductFailure, ProductItem> response = await detailProductRepository.getDetailProduct(idy);
//         Either<DetailProductFailure, ProductItem> either = response.match((l) => left(l), (r) => right(r));
//         response.fold((l) {
//           debugPrint('flow DetailProductBloc fail to get data $l');
//         }, (product) {
//           debugPrint('flow DetailProductBloc success to load data');
//           emit(DetailProductState.loaded(optionFailedOrSuccess: optionOf(either)));
//         });
//         debugPrint('flow DetailProductBloc END');
//       },);
//     });
//   }
// }
