
import 'package:flutter/material.dart';
import 'package:kios/1_presentation/pages/products/widgets/product_screen.dart';
import 'package:kios/2_application/products/products_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductWrapperPage extends StatelessWidget {
  const ProductWrapperPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductsBloc()..add(const ProductsEvent.started()),
      child: const ProductScreen(),
    );
  }
}