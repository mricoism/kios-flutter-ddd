import 'package:cached_network_image/cached_network_image.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kios/1_presentation/pages/detail_product/detail_product_page.dart';
import 'package:kios/2_application/product_by_category/product_by_category_bloc.dart';
import 'package:kios/4_infrastructure/products/product_item.dart';
import 'package:shimmer/shimmer.dart';

class RelatedProductByClass extends StatelessWidget {
  final ProductItem productItem;
  const RelatedProductByClass({super.key, required this.productItem});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductByCategoryBloc()
        ..add(ProductByCategoryEvent.started(productItem: productItem)),
      child: BlocConsumer<ProductByCategoryBloc, ProductByCategoryState>(
        listener: (BuildContext context, state) {},
        builder: (BuildContext context, ProductByCategoryState state) {
          return Container(
            height: 360,
            child: state.optionFailedOrSuccess.match(() {
              return Shimmer.fromColors(
                baseColor: Colors.grey.shade300,
                highlightColor: Color.fromRGBO(255, 255, 255, 1),
                child: Container(
                  color: Colors.green.shade300,
                ),
              );
            }, (products) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Swiper(
                  itemBuilder: (BuildContext context, int index) {
                    var item = state.items[index];
                    var image = item.images?[0] ?? "";
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
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 20),
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
                                      child: CachedNetworkImage(
                                        imageUrl: image,
                                        placeholder: (context, url) {
                                          return Image.asset(
                                              'assets/no_image_two.jpg');
                                        },
                                        errorWidget: (context, url, error) {
                                          return Image.asset(
                                              'assets/no_image_one.png');
                                        },
                                      ),
                                    )),
                                Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Text(
                                    item.title,
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
                                      '\$${item.price} USD',
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