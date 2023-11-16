import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kios/1_presentation/pages/detail_product/detail_product_page.dart';
import 'package:kios/1_presentation/pages/products/widgets/shimmer_item.dart';
import 'package:kios/2_application/products/products_bloc.dart';
import 'package:kios/4_infrastructure/products/product_item.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ProductsBloc bloc = context.read<ProductsBloc>();
    return BlocConsumer<ProductsBloc, ProductsState>(
      listener: (BuildContext context, ProductsState state) async {
        await state.optionFailureOrSuccess.match(() => null, (t) {
          debugPrint('NothingExecutable ProductScreen BlocConsumer listener');
        });
      },
      builder: (BuildContext context, ProductsState state) {
        bool isMoreLoading = true;
        return Scaffold(
          // appBar: AppBar(
          //   title: const Text('KIOS'),
          // ),
          body: Container(
            child: Column(
              children: [
                Container(
                  alignment: Alignment.bottomCenter,
                  height: 120,
                  // color: Colors.cyan,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 24, right: 24, bottom: 10),
                    child: Container(
                      // height: 45,
                        child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                          prefixIcon: Icon(Icons.search_rounded)),
                      autocorrect: false,
                      onChanged: (value) {
                        bloc.add(ProductsEvent.search(keyword: value));
                      },
                    )),
                  ),
                ),
                Expanded(
                  child: state.optionFailureOrSuccess.match(
                      () => const ShimmerProductList(), // before data loaded
                      (options) => options.fold(
                          // after data loaded
                          (l) => const Center(
                                child: Text('No Data'),
                              ),
                          (search) => search.value.match((l) {
                            return Center(child: Text('not Found'),);
                          }, (valueItems) {
                            return Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 14),
                                child:
                                    NotificationListener<ScrollEndNotification>(
                                  onNotification: (scrollInfo) {
                                    if (scrollInfo.metrics.pixels ==
                                            scrollInfo
                                                .metrics.maxScrollExtent &&
                                        state.items.length != 40) {
                                      bloc.add(ProductsEvent.nextPage(
                                          productItem: state.items));
                                    } else {
                                      debugPrint(
                                          'NothingExecutable ProductScreen else scrollInfo');
                                    }
                                    return true;
                                  },
                                  child: Container(
                                    child: GridView.builder(
                                        shrinkWrap: true,
                                        gridDelegate:
                                            const SliverGridDelegateWithFixedCrossAxisCount(
                                                crossAxisCount: 2,
                                                childAspectRatio: 0.6,
                                                mainAxisSpacing: 30,
                                                crossAxisSpacing: 10),
                                        itemCount: search.getOrCrash().length,
                                        itemBuilder: (BuildContext ctx, index) {
                                          ProductItem item = valueItems[index];
                                          var image = item.images?[0] ?? '';
                                          return GestureDetector(
                                            onTap: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (BuildContext
                                                              context) =>
                                                          DetailProductPage(
                                                              productItem:
                                                                  item)));
                                              print(
                                                  'HALO this object number: $index | id: ${item.idy}');
                                            },
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 10),
                                              child: Container(
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15),
                                                    boxShadow: const <BoxShadow>[
                                                      BoxShadow(
                                                          color: Colors.grey,
                                                          offset: Offset(0, 2),
                                                          blurRadius: 10.0)
                                                    ],
                                                  ),
                                                  child: Column(
                                                    children: [
                                                      Container(
                                                          decoration: const BoxDecoration(
                                                              color:
                                                                  Colors.white,
                                                              borderRadius: BorderRadius.only(
                                                                  topLeft: Radius
                                                                      .circular(
                                                                          15),
                                                                  topRight: Radius
                                                                      .circular(
                                                                          15))),
                                                          height: 200,
                                                          width: 200,
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(10),
                                                            child:
                                                                CachedNetworkImage(
                                                              imageUrl: image,
                                                              placeholder:
                                                                  (context,
                                                                      url) {
                                                                return Image.asset(
                                                                    'assets/no_image_two.jpg');
                                                              },
                                                              errorWidget:
                                                                  (context, url,
                                                                      error) {
                                                                return Image.asset(
                                                                    'assets/no_image_one.png');
                                                              },
                                                            ),
                                                          )),
                                                      Container(
                                                        alignment: Alignment
                                                            .centerLeft,
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(
                                                                  bottom: 10,
                                                                  left: 10,
                                                                  top: 10,
                                                                  right: 10),
                                                          child: Text(
                                                            item.title,
                                                            style: const TextStyle(
                                                                fontSize: 16,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                            maxLines: 2,
                                                            textAlign:
                                                                TextAlign.left,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(left: 10),
                                                        alignment: Alignment
                                                            .centerLeft,
                                                        child: Container(
                                                          decoration:
                                                              BoxDecoration(
                                                            borderRadius:
                                                                const BorderRadius
                                                                    .all(Radius
                                                                        .circular(
                                                                            8)),
                                                            color: Colors
                                                                .green.shade200,
                                                          ),
                                                          child: Text(
                                                            '\$${item.price} USD',
                                                            style: TextStyle(
                                                              fontSize: 12,
                                                            ),
                                                          ),
                                                          padding:
                                                              const EdgeInsets
                                                                  .symmetric(
                                                                  vertical: 8,
                                                                  horizontal:
                                                                      8),
                                                        ),
                                                      )
                                                    ],
                                                  )),
                                            ),
                                          );
                                        }),
                                  ),
                                ),
                              );
                          }) )),
                ),
                if (state.isMoreLoading)
                  Padding(
                    padding: EdgeInsets.only(top: 20, bottom: 40),
                    child: Row(
                      children: [
                        Spacer(),
                        Text(
                          'Load More Item',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          width: 30,
                          height: 30,
                          child: CircularProgressIndicator(),
                        ),
                        Spacer()
                      ],
                    ),
                  ),
              ],
            ),
          ),
        );
      },
    );
  }
}
