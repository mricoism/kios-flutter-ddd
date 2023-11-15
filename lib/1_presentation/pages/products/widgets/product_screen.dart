import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kios/1_presentation/pages/detail_product/detail_product_page.dart';
import 'package:kios/1_presentation/pages/products/widgets/shimmer_item.dart';
import 'package:kios/2_application/products/products_bloc.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ProductsBloc bloc = context.read<ProductsBloc>();
    return BlocConsumer<ProductsBloc, ProductsState>(
      listener: (BuildContext context, ProductsState state) async {
          await state.optionFailureOrSuccess.match(() => null, (t) {
            print('hws l 4');
          });
        },
        builder: (BuildContext context, ProductsState state) {
          debugPrint("hws c 7");
          bool isMoreLoading = true;
          return Scaffold(
            // appBar: AppBar(
            //   title: const Text('KIOS'),
            // ),
            body: Container(
              // color: Colors.grey.shade200,
              child: Column(
                children: [
                  Expanded(
                    child: state.optionFailureOrSuccess.match(
                        () => const ShimmerProductList(), // before data loaded
                        (options) => options.fold(
                            // after data loaded
                            (l) => const Center(
                                  child: Text('No Data'),
                                ),
                            (products) => Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 14),
                                  child: NotificationListener<
                                      ScrollEndNotification>(
                                    onNotification: (scrollInfo) {
                                      print('hws l 5 ${state.items.length}');

                                      print('hws l 2 ${state.items.length}');
                                      if (scrollInfo.metrics.pixels ==
                                              scrollInfo
                                                  .metrics.maxScrollExtent &&
                                          state.items.length != 40) {
                                        // _offset += 10;
                                        print('hws m 1 ${state.items.length}');
                                        print('hws p 1 ${state.items.length}');
                                        bloc.add(ProductsEvent.nextPage(productItem: state.items));
                                      } else {
                                        print('hws k False');
                                      }
                                      return true;
                                    },
                                    child: Container(
                                      child: GridView.builder(
                                          // shrinkWrap: true,
                                          gridDelegate:
                                              const SliverGridDelegateWithFixedCrossAxisCount(
                                                  crossAxisCount: 2,
                                                  childAspectRatio: 0.6,
                                                  mainAxisSpacing: 30,
                                                  crossAxisSpacing: 10
                                                  // maxCrossAxisExtent: 200,
                                                  // childAspectRatio: 3 / 2,
                                                  // crossAxisSpacing: 20,
                                                  // mainAxisSpacing: 20,
                                                  ),
                                          itemCount: state.items.length,
                                          itemBuilder:
                                              (BuildContext ctx, index) {
                                            var item = state.items[index];
                                            var image = item.images?[0] ?? '';
                                            print('hws g $image');
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
                                                    // alignment: Alignment.center,
                                                    decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              15),
                                                      boxShadow: const <BoxShadow>[
                                                        BoxShadow(
                                                            color: Colors.grey,
                                                            offset:
                                                                Offset(0, 2),
                                                            blurRadius: 10.0)
                                                      ],
                                                    ),
                                                    child: Column(
                                                      children: [
                                                        Container(
                                                          // alignment: Alignment.centerLeft,
                                                            decoration: const BoxDecoration(
                                                                color: Colors
                                                                    .white,
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
                                                                  return Image
                                                                      .asset(
                                                                          'assets/no_image_two.jpg');
                                                                },
                                                                errorWidget:
                                                                    (context,
                                                                        url,
                                                                        error) {
                                                                  return Image
                                                                      .asset(
                                                                          'assets/no_image_one.png');
                                                                },
                                                              ),
                                                              // FadeInImage(
                                                              //     placeholder:
                                                              //         const AssetImage(
                                                              //             'assets/no_image_two.jpg'),
                                                              //     image: NetworkImage(
                                                              //         item.image)),
                                                            )),
                                                        Container(
                                                          alignment: Alignment.centerLeft,
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsets.only(bottom: 10, left: 10, top: 10, right: 10),
                                                            child: Text(
                                                              
                                                              item.title,
                                                              style: const TextStyle(
                                                                  
                                                                  fontSize: 16,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold),
                                                              maxLines: 2,
                                                              textAlign: TextAlign.left,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(
                                                                  left: 10),
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Container(
                                                            decoration:
                                                                BoxDecoration(
                                                              borderRadius:
                                                                  const BorderRadius
                                                                      .all(
                                                                      Radius.circular(
                                                                          8)),
                                                              color: Colors
                                                                  .green
                                                                  .shade200,
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
                                ))),
                  ),
                  if (state.isMoreLoading)
                  const Padding(
                    padding: EdgeInsets.only(top: 10, bottom: 40),
                    child: Center(
                      child: CircularProgressIndicator(),
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



/*
Container(
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
                                            child: FadeInImage(placeholder: AssetImage('assets/no_image_two.jpg'), image: NetworkImage(item.image)),
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

*/


// --add optionFailureOrSuccess in ProductState --Adding Shimmer loading