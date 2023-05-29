import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fourhundred_app/app_config.dart';
import 'package:fourhundred_app/components/product_widget.dart';
import 'package:fourhundred_app/get_controlles/product_list_page.dart';
import 'package:fourhundred_app/materials.dart';
import 'package:fourhundred_app/models/main_section_model.dart';
import 'package:fourhundred_app/models/sub_category_model.dart';
import 'package:fourhundred_app/models/subtitle_model.dart';
import 'package:get/get.dart';

import '../components/my_app_bar.dart';
import '../components/my_text.dart';

class ProductListPage extends StatefulWidget {
  MainSectionModel mainSectionModel;
  SubCategoryModel subCategoryModel;
  late ScrollController scrollController;
  late int offset;

  ProductListPage(
      {super.key,
      required this.mainSectionModel,
      required this.subCategoryModel});

  @override
  State<ProductListPage> createState() => _ProductListtPage();
}

class _ProductListtPage extends State<ProductListPage> {
  @override
  void initState() {
    widget.offset = 0;
    ProductListPageController productListPageController =
        Get.put<ProductListPageController>(ProductListPageController());
    productListPageController.getProduct(int.parse(widget.mainSectionModel.Id!),
        int.parse(widget.subCategoryModel.Id!), widget.offset);
    widget.scrollController = ScrollController();
    widget.scrollController.addListener(() {
      if (widget.scrollController.position.atEdge) {
        /* if (widget.scrollController.position.pixels == 0) {
          widget.offset -= productPerPage;
          productListPageController.getProduct(
              int.parse(widget.mainSectionModel.Id!),
              int.parse(widget.subCategoryModel.Id!),
              widget.offset);
        } else { */
        widget.offset += productPerPage;
        productListPageController.getProduct(
            int.parse(widget.mainSectionModel.Id!),
            int.parse(widget.subCategoryModel.Id!),
            widget.offset);
      }
      // }
    });
  }

  List<Widget> getProduct(
      {required ProductListPageController productListPageController}) {
    List<Widget> products = [];
    if (productListPageController.products.length % 2 == 0) {
      for (var i = 0;
          i <= productListPageController.products.length / 2;
          i += 2) {
        products.add(Row(
          children: [
            ProductWidget(
                productModel: productListPageController.products.elementAt(i),
                useSize: false,
                useShadow: true),
            ProductWidget(
                productModel:
                    productListPageController.products.elementAt(i + 1),
                useSize: false,
                useShadow: true)
          ],
        ));
      }
    } else {
      for (var i = 0;
          i <= productListPageController.products.length / 2.toInt();
          i += 2) {
        products.add(Row(
          children: [
            ProductWidget(
                productModel: productListPageController.products.elementAt(i),
                useSize: false,
                useShadow: true),
            ProductWidget(
                productModel:
                    productListPageController.products.elementAt(i + 1),
                useSize: false,
                useShadow: true)
          ],
        ));
      }
      products.add(
        Center(
          child: ProductWidget(
              productModel: productListPageController.products
                  .elementAt(productListPageController.products.length - 1),
              useSize: false,
              useShadow: true),
        ),
      );
    }
    return products;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        showLogo: false,
        text: widget.subCategoryModel.RecTitleAr ?? "",
        profileIcon: true,
      ),
      body: GetBuilder<ProductListPageController>(
        builder: (controller) {
          /* if (controller.isloading.value) {
            return ListView.separated(
              controller: widget.scrollController,
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    ProductWidget(
                      isloading: controller.isloading.value,
                    ),
                    ProductWidget(
                      isloading: controller.isloading.value,
                    )
                  ],
                );
              },
              separatorBuilder: (context, index) => const SizedBox(
                height: 2,
              ),
              itemCount: controller.products.length,
            );
          } else { */
          return ListView(
            controller: widget.scrollController,
            children: [
              if (controller.products.isNotEmpty)
                ...getProduct(productListPageController: controller),
              controller.isloading.value
                  ? Column(
                      children: [
                        Row(
                          children: [
                            ProductWidget(
                              isloading: controller.isloading.value,
                            ),
                            ProductWidget(
                              isloading: controller.isloading.value,
                            )
                          ],
                        ),
                        Row(
                          children: [
                            ProductWidget(
                              isloading: controller.isloading.value,
                            ),
                            ProductWidget(
                              isloading: controller.isloading.value,
                            )
                          ],
                        ),
                        Row(
                          children: [
                            ProductWidget(
                              isloading: controller.isloading.value,
                            ),
                            ProductWidget(
                              isloading: controller.isloading.value,
                            )
                          ],
                        )
                      ],
                    )
                  : Container()
            ],
            // itemBuilder: (context, index) {
            //   return Row(
            //     children: [
            //       ProductWidget(
            //           productModel: controller.products.elementAt(index),
            //           useSize: false,
            //           useShadow: true),
            //       ProductWidget(
            //           productModel: controller.products.elementAt(index + 1),
            //           useSize: false,
            //           useShadow: true)
            //     ],
            //   );
            // },
            // separatorBuilder: (context, index) => const SizedBox(
            // height: 2,
            // ),
            // itemCount: (controller.products.length / 2).toInt(),
          );
          // }
        },
      ),
    );
  }
}
