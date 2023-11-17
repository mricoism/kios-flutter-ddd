import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kios/1_presentation/pages/detail_product/widgets/releated_product_by_category.dart';
import 'package:kios/1_presentation/widgets/component/custom_button.dart';
import 'package:kios/2_application/products/products_bloc.dart';
import 'package:kios/4_infrastructure/products/product_item.dart';
import 'package:kios/injection.dart';

class DetailProductPage extends StatelessWidget {
  final ProductItem productItem;
  const DetailProductPage({super.key, required this.productItem});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ProductsBloc>()..add(const ProductsEvent.started()),
      child: BlocConsumer<ProductsBloc, ProductsState>(
        listener: (BuildContext context, state) {},
        builder: (BuildContext context, state) {
          return Scaffold(
            body: SafeArea(
                //screen
                child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(24, 10, 24, 0),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 60,
                      // color: Colors.grey,
                      child: Row(
                        children: [
                          CustomButton(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              icon: Icons.arrow_back,
                              color: Colors.black),
                          Spacer(),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              color: Colors.green.shade200,
                            ),
                            child: Text(
                              '\$${productItem.price} USD',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            padding: EdgeInsets.symmetric(
                                vertical: 12, horizontal: 12),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      // color: Colors.grey,
                      decoration: BoxDecoration(
                          // color: Colors.grey,
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                          child: Container(
                        height: 400,
                        width: 400,
                        child: CachedNetworkImage(
                          imageUrl: productItem.images?[0] ?? '',
                          placeholder: (context, url) {
                            return Image.asset('assets/no_image_two.jpg');
                          },
                          errorWidget: (context, url, error) {
                            return Image.asset('assets/no_image_one.png');
                          },
                        ),
                      )),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          productItem.title,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 24),
                          textAlign: TextAlign.left,
                        )),
                    const SizedBox(
                      height: 24,
                    ),
                    Text(
                      productItem.description,
                      style: TextStyle(fontSize: 16),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        'Related products :',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    RelatedProductByClass(
                      productItem: productItem,
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                  ],
                ),
              ),
            )),
          );
        },
      ),
    );
  }
}
