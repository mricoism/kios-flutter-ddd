import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerProductList extends StatelessWidget {
  const ShimmerProductList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14),
      child: Container(
        child: GridView.builder(
            // shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.6,
                mainAxisSpacing: 20,
                crossAxisSpacing: 10
                // maxCrossAxisExtent: 200,
                // childAspectRatio: 3 / 2,
                // crossAxisSpacing: 20,
                // mainAxisSpacing: 20,
                ),
            itemCount: 10,
            itemBuilder: (BuildContext ctx, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                    // alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: const <BoxShadow>[
                        BoxShadow(
                            color: Colors.grey,
                            offset: const Offset(0, 2),
                            blurRadius: 10.0)
                      ],
                    ),
                    child: Shimmer.fromColors(
                      baseColor: Colors.grey.shade300,
                      highlightColor: const Color.fromRGBO(255, 255, 255, 1),
                      child: Column(
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(15),
                                    topRight: Radius.circular(15))),
                            height: 200,
                            width: 200,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Container(
                              width: double.infinity,
                              height: 50,
                              color: Colors.grey,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 10),
                            alignment: Alignment.centerLeft,
                            child: Container(
                              width: 50,
                              height: 20,
                              decoration: BoxDecoration(
                                color: Colors.grey,
                              ),
                              padding: EdgeInsets.symmetric(
                                  vertical: 8, horizontal: 8),
                            ),
                          )
                        ],
                      ),
                    )),
              );
            }),
      ),
    );
  }

  // @override
  // Widget build(BuildContext context) {
  //   return ListView.builder(
  //       itemCount: 10,
  //       itemBuilder: (BuildContext context, int index) {
  //         debugPrint('flow ProductScreen loading shimmer');
  //         return Container(
  //           padding: const EdgeInsets.symmetric(
  //               vertical: 8, horizontal: 24),
  //           height: 100,
  //           child: Shimmer.fromColors(
  //             baseColor: Colors.grey.shade300,
  //             highlightColor:
  //                 const Color.fromRGBO(255, 255, 255, 1),
  //             child: Row(
  //               children: [
  //                 Container(
  //                   width: 100,
  //                   color: Colors.amber,
  //                 ),
  //                 SizedBox(width: 8),
  //                 Expanded(
  //                   child: Column(
  //                     crossAxisAlignment: CrossAxisAlignment.start,
  //                     children: [
  //                       Expanded(
  //                         flex: 2,
  //                         child: Container(
  //                           // width: double.infinity,
  //                           // height: 50,
  //                           color: Colors.white,
  //                         ),
  //                       ),
  //                       const Padding(
  //                         padding: EdgeInsets.symmetric(
  //                             vertical: 2.0),
  //                       ),
  //                       Expanded(
  //                         flex: 1,
  //                         child: Container(
  //                           width: 100,
  //                           // height: 3,
  //                           color: Colors.white,
  //                         ),
  //                       ),
  //                     ],
  //                   ),
  //                 ),
  //               ],
  //             ),
  //           ),
  //         );
  //       });
  // }
}
