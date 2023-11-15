// import 'package:bloc/bloc.dart';
// import 'package:flutter/material.dart';
// import 'package:fpdart/fpdart.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:kios/3_domain/categories/category_failure.dart';
// import 'package:kios/3_domain/categories/i_category_repository.dart';
// import 'package:kios/4_infrastructure/categories/category_item.dart';
// import 'package:kios/4_infrastructure/categories/category_repository.dart';
// import 'package:kios/4_infrastructure/products/product_item.dart';

// part 'category_event.dart';
// part 'category_state.dart';
// part 'category_bloc.freezed.dart';

// class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
//   CategoryBloc() : super(CategoryState.initial()) {
//     debugPrint('flow DetailProductBloc START');
//     final ICategoryRepository categoryRepository = CategoryRepository();

//     on<CategoryEvent>((event, emit) async {
//       await event.when(started: (productItem) async {
//         debugPrint('flow DetailProductBloc Id: ${productItem.idy}');
//         emit(CategoryState.initial());
//         final Either<CategoryFailure, List<CategoryItem>> response =
//             await categoryRepository.getCategory(productItem);
//         Either<CategoryFailure, List<CategoryItem>> either =
//             response.match((l) => left(l), (r) => right(r));
//         response.fold((l) {
//           debugPrint('flow CategoryBloc fail to get data $l');
//         }, (products) {
//           debugPrint('flow CategoryBloc success to load data');
//           emit(state.copyWith(items: products, optionFailedOrSuccess: optionOf(either)));

//           // emit(state.when((items) => CategoryState(items: products),
//           //     loading: CategoryState.loading,
//           //     loaded: optionOf(either)));
          
//           // emit(CategoryState(items: products));
//           // emit(CategoryState.loaded(optionFailedOrSuccess: optionOf(either)));
//         });
//         debugPrint('flow DetailProductBloc END');
//       }, nextPage: () {
        
//       },);
//     });
//   }
// }
