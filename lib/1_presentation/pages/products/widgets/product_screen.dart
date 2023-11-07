import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kios/1_presentation/pages/detail_product/detail_product_page.dart';
import 'package:kios/1_presentation/pages/products/widgets/shimmer_item.dart';
import 'package:kios/2_application/products/products_bloc.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProductsBloc, ProductsState>(
        builder: (BuildContext context, ProductsState state) {
          return Scaffold(
            // appBar: AppBar(
            //   title: const Text('KIOS'),
            // ),
            body: Column(
              children: [
                Expanded(
                  child: state.optionFailureOrSuccess.match(
                      () => const ShimmerProductList(), // before data loaded
                      (options) => options.fold( // after data loaded
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
                                    return GestureDetector(
                                      onTap: () {
                                        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => DetailProductPage(productItem: item)));
                                        print('HALO this object number: $index | id: ${item.idy}');
                                      },
                                      child: Padding(
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