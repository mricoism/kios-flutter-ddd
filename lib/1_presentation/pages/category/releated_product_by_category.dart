import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kios/1_presentation/pages/detail_product/detail_product_page.dart';
import 'package:kios/2_application/category/category_bloc.dart';
import 'package:kios/4_infrastructure/products/product_item.dart';
import 'package:shimmer/shimmer.dart';

class RelatedProductByClass extends StatelessWidget {
  final ProductItem productItem;
  const RelatedProductByClass({super.key, required this.productItem});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          CategoryBloc()..add(CategoryEvent.started(productItem: productItem)),
      child: BlocConsumer<CategoryBloc, CategoryState>(
        listener: (BuildContext context, state) {
          debugPrint("hws c 1");
        },
        builder: (BuildContext context, CategoryState state) {
          var itemz = state.items;
          debugPrint("hws c 2 | $itemz");
          return Container(
            // color: Colors.white,
            // width: 200,
            height: 360,
            child: state.optionFailedOrSuccess.match(() {
              print('hws d ');
              return Shimmer.fromColors(
                baseColor: Colors.grey.shade300,
                highlightColor: Color.fromRGBO(255, 255, 255, 1),
                child: Container(
                  color: Colors.green.shade300,
                ),
              );
            }, (products) {
              debugPrint("hws c 3");
              debugPrint("hws c 4 | $itemz | $products");
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Swiper(
                  itemBuilder: (BuildContext context, int index) {
                    var items = state.items[index];
                    return GestureDetector(
                      // onTap: () {
                      //   Navigator.push(
                      //       context,
                      //       MaterialPageRoute(
                      //           builder: (BuildContext context) =>
                      //               DetailProductPage(productItem: items)));
                      //   print('HALO this object number: $index | id: ${item.idy}');
                      // },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                        child: Container(
                            width: 200,
                            // alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
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
                                        color: Colors.white,
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(15),
                                            topRight: Radius.circular(15))),
                                    height: 200,
                                    width: 200,
                                    child: Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: FadeInImage(
                                          placeholder: const AssetImage(
                                              'assets/no_image_two.jpg'),
                                          image: NetworkImage(items.image)),
                                    )),
                                Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Text(
                                    items.title,
                                    style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.only(left: 10),
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(8)),
                                      color: Colors.green.shade200,
                                    ),
                                    child: Text(
                                      '\$${items.price} USD',
                                      style: TextStyle(
                                        fontSize: 12,
                                      ),
                                    ),
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 8, horizontal: 8),
                                  ),
                                )
                              ],
                            )),
                      ),
                    );
                  },
                  itemCount: state.items.length,
                  viewportFraction: 0.5,
                  scale: 0.9,
                ),
              );
            }),
          );
        },
      ),
    );
  }
}


/*
GestureDetector(
                  // onTap: () {
                  //   Navigator.push(
                  //       context,
                  //       MaterialPageRoute(
                  //           builder: (BuildContext context) =>
                  //               DetailProductPage(productItem: items)));
                  //   print('HALO this object number: $index | id: ${item.idy}');
                  // },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Container(
                      width: 200,
                        // alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
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
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(15),
                                        topRight: Radius.circular(15))),
                                height: 200,
                                width: 200,
                                child: Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: FadeInImage(
                                      placeholder: const AssetImage(
                                          'assets/no_image_two.jpg'),
                                      image: NetworkImage(items.image)),
                                )),
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Text(
                                items.title,
                                style: const TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.only(left: 10),
                              alignment: Alignment.centerLeft,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(8)),
                                  color: Colors.green.shade200,
                                ),
                                child: Text(
                                  '\$${items.price} USD',
                                  style: TextStyle(
                                    fontSize: 12,
                                  ),
                                ),
                                padding: const EdgeInsets.symmetric(
                                    vertical: 8, horizontal: 8),
                              ),
                            )
                          ],
                        )),
                  ),
                );
*/