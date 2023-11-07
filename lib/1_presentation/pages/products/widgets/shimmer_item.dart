

import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerProductList extends StatelessWidget {
  const ShimmerProductList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
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
        });
  }
}