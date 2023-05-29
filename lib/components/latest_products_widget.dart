import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fourhundred_app/components/product_widget.dart';
import 'package:fourhundred_app/components/section_widget.dart';
import 'package:fourhundred_app/models/main_section_model.dart';
import 'package:fourhundred_app/models/product_models.dart';
import 'package:shimmer/shimmer.dart';

class LatestProductsWidget extends StatelessWidget {
  List<ProductModel> products;
  bool? loading;
  LatestProductsWidget({super.key, required this.products, this.loading});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: const Size.fromHeight(300).height,
      child: ListView(
          scrollDirection: Axis.horizontal,
          children: loading ?? false
              ? [1, 2, 3, 4, 5]
                  .map((e) => Container(
                        width: const Size.fromWidth(200).width,
                        margin: const EdgeInsets.symmetric(
                            vertical: 4, horizontal: 5),
                        child: Shimmer.fromColors(
                          baseColor: Colors.grey.shade300,
                          highlightColor: Colors.grey.shade100,
                          child: Container(
                            decoration:
                                const BoxDecoration(color: Colors.amber),
                          ),
                        ),
                      ))
                  .toList()
              : products
                  .map((e) => ProductWidget(
                        productModel: e,
                      ))
                  .toList()),
    );
  }
}
