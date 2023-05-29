import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'package:fourhundred_app/app_config.dart';
import 'package:fourhundred_app/materials.dart';
import 'package:fourhundred_app/models/product_models.dart';
import 'package:fourhundred_app/pages/product_details_page.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';

import 'my_text.dart';

class ProductWidget extends StatelessWidget {
  ProductModel? productModel;
  bool? useSize;
  bool? useShadow;
  bool? isloading;
  ProductWidget(
      {super.key,
      this.productModel,
      this.useSize,
      this.useShadow,
      this.isloading});

  @override
  Widget build(BuildContext context) {
    print(productModel);
    return isloading ?? false
        ? Container(
            height: MediaQuery.of(context).size.height / 2 - 2,
            width: MediaQuery.of(context).size.width / 2 - 2,
            margin: const EdgeInsets.symmetric(vertical: 1, horizontal: 1),
            padding: const EdgeInsets.all(2),
            decoration: BoxDecoration(color: Colors.transparent),
            child: Shimmer.fromColors(
                child: Container(
                  decoration: BoxDecoration(color: Colors.grey.shade100),
                ),
                baseColor: Colors.grey.shade300,
                highlightColor: Colors.grey.shade100),
          )
        : InkWell(
            onTap: () =>
                Get.to(() => ProductDetailsPage(productModel: productModel!)),
            child: Container(
              height: MediaQuery.of(context).size.height / 2 - 2,
              width: MediaQuery.of(context).size.width / 2 - 2,
              margin: const EdgeInsets.symmetric(vertical: 1, horizontal: 1),
              child: Card(
                child: Stack(
                  children: [
                    useSize ?? true
                        ? Container(
                            width: Size.fromWidth(200).width,
                            height: Size.fromHeight(300).height,
                            child: CachedNetworkImage(
                              fit: BoxFit.fill,
                              imageUrl: mediaUrl +
                                  productModel!.CodeId! +
                                  '-' +
                                  productModel!.ColorCode! +
                                  '.jpg',
                              progressIndicatorBuilder:
                                  (context, url, downloadProgress) => Center(
                                child:
                                    CircularProgressIndicator(color: iconColor),
                              ),
                              errorWidget: (context, url, error) =>
                                  Icon(Icons.error),
                            ),
                          )
                        : Container(
                            width: double.infinity,
                            height: Size.fromHeight(550).height,
                            child: CachedNetworkImage(
                              fit: BoxFit.cover,
                              imageUrl: mediaUrl +
                                  productModel!.CodeId! +
                                  '-' +
                                  productModel!.ColorCode! +
                                  '.jpg',
                              progressIndicatorBuilder:
                                  (context, url, downloadProgress) => Center(
                                child:
                                    CircularProgressIndicator(color: iconColor),
                              ),
                              errorWidget: (context, url, error) =>
                                  Icon(Icons.error),
                            ),
                          ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      left: 0,
                      child: Container(
                          padding: const EdgeInsets.all(2),
                          width: const Size.fromWidth(200).width,
                          decoration: BoxDecoration(
                              color: primaryColor.withAlpha(1000)),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              MyText(
                                textAlign: TextAlign.center,
                                text: productModel!.RecTitleAr ?? "",
                                color: iconColor,
                                bold: false,
                              ),
                              productModel!.Price2 == null
                                  ? Container()
                                  : MyText(
                                      textAlign: TextAlign.center,
                                      text: productModel!.Price2 ?? "",
                                      color: iconColor,
                                      size: 18,
                                    ),
                              MyText(
                                textAlign: TextAlign.center,
                                text: productModel!.Price1 ?? "",
                                color: iconColor,
                                textLinned:
                                    productModel!.Price2 == null ? false : true,
                              ),
                            ],
                          )),
                    ),
                  ],
                ),
              ),
            ),
          );
  }
}
