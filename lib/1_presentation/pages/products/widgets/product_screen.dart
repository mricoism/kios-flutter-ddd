import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kios/2_application/products/products_bloc.dart';
import 'package:shimmer/shimmer.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProductsBloc, ProductsState>(
        builder: (BuildContext context, ProductsState state) {
          return Scaffold(
            appBar: AppBar(
              title: Text('KIOS'),
            ),
            body: Container(
              color: Colors.grey.shade100,
              child: ListView.builder(
                  itemCount: state.item.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 24),
                      child: Shimmer.fromColors(
                        baseColor: Colors.grey,
                        highlightColor: Colors.white,
                        child: ListTile(
                          leading: Container(
                            height: 100,
                            width: 50,
                            child: Image.network(state.item[index].image),
                          ),
                          title: Text(state.item[index].title as String, style: TextStyle(fontSize: 18),),
                          subtitle: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 6),
                            child: Text("\$${state.item[index].price.toString()} USD"),
                          ),
                        ),
                      ),
                    );
                  }),
            ),
          );
        },
        listener: (BuildContext context, ProductsState state) {});
  }
}
