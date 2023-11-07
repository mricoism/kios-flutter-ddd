import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kios/1_presentation/widgets/custom_button.dart';
import 'package:kios/2_application/detail_product/detail_product_bloc.dart';
import 'package:kios/4_infrastructure/products/product_item.dart';

class DetailProductPage extends StatelessWidget {
  final ProductItem productItem;
  const DetailProductPage({super.key, required this.productItem});

  @override
  Widget build(BuildContext context) {
    debugPrint('hws a ${productItem.idy}');
    return BlocProvider(
      create: (context) => DetailProductBloc()
        ..add(DetailProductEvent.started(idy: productItem.idy)),
      child: BlocConsumer<DetailProductBloc, DetailProductState>(
        listener: (BuildContext context, state) {},
        builder: (BuildContext context, state) {
          return Scaffold(
            body: SafeArea(
                //screen
                child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 60,
                      color: Colors.white,
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
                    Container(
                      color: Colors.white,
                      child: Center(
                          child: Container(
                        height: 400,
                        width: 400,
                        color: Colors.white,
                        child: Image.network(productItem.image),
                      )),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          productItem.title,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 24),
                          textAlign: TextAlign.left,
                        )),
                    SizedBox(
                      height: 24,
                    ),
                    Text(
                      productItem.description,
                      style: TextStyle(fontSize: 16),
                    ),
                    // Container(
                    //   color: Colors.amber,
                    //   child: Center(
                    //       child: Container(
                    //     height: 400,
                    //     width: 400,
                    //     color: Colors.cyan,
                    //     child: Image.network(productItem.image),
                    //   )),
                    // ),
                    // SizedBox(
                    //   height: 50,
                    // ),
                    // Container(
                    //   color: Colors.amber,
                    //   child: Center(
                    //       child: Container(
                    //     height: 400,
                    //     width: 400,
                    //     color: Colors.cyan,
                    //     child: Image.network(productItem.image),
                    //   )),
                    // ),
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
