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
            body: Column(
              children: [
                Expanded(
                  child: state.optionFailureOrSuccess.match(
                      () => ListView.builder(
                          itemCount: 10,
                          itemBuilder: (BuildContext context, int index) {
                            debugPrint('flow ProductScreen loading shimmer');
                            return Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 8, horizontal: 24),
                              height: 100,
                              child: Shimmer.fromColors(
                                baseColor: Colors.grey.shade300,
                                highlightColor:
                                    const Color.fromRGBO(255, 255, 255, 1),
                                child: Row(
                                  children: [
                                    Container(
                                      width: 100,
                                      color: Colors.amber,
                                    ),
                                    SizedBox(width: 8),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Expanded(
                                            flex: 2,
                                            child: Container(
                                              // width: double.infinity,
                                              // height: 50,
                                              color: Colors.white,
                                            ),
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.symmetric(
                                                vertical: 2.0),
                                          ),
                                          Expanded(
                                            flex: 1,
                                            child: Container(
                                              width: 100,
                                              // height: 3,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }),
                      (options) => options.fold(
                            (l) => const Center(
                              child: Text('No Data'),
                            ),
                            (products) => Container(
                              color: Colors.grey.shade100,
                              child: ListView.builder(
                                  itemCount: state.item.length,
                                  itemBuilder: (context, index) {
                                    debugPrint('flow ProductScreen data loaded and state changed!');
                                    var item = state.item[index];
                                    return Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 8, horizontal: 24),
                                      child: ListTile(
                                        leading: Container(
                                          height: 100,
                                          width: 50,
                                          child: Image.network(
                                              item.image),
                                        ),
                                        title: Text(
                                          item.title,
                                          style: const TextStyle(fontSize: 18),
                                        ),
                                        subtitle: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 6),
                                          child: Text(
                                              "\$${item.price.toString()} USD"),
                                        ),
                                      ),
                                    );
                                  }),
                            ),
                          )),
                ),
              ],
            ),
          );
        },
        listener: (BuildContext context, ProductsState state) {});
  }
}

// --add optionFailureOrSuccess in ProductState --Adding Shimmer loading