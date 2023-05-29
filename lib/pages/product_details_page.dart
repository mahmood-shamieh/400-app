import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:fourhundred_app/components/image_view_widget.dart';
import 'package:fourhundred_app/components/my_elevated_button.dart';
import 'package:fourhundred_app/components/my_text.dart';
import 'package:fourhundred_app/components/size_table_widget.dart';
import 'package:fourhundred_app/components/small_image_widget.dart';
import 'package:fourhundred_app/get_controlles/product_details_page.dart';
import 'package:fourhundred_app/models/product_models.dart';
import 'package:get/get.dart';
import 'package:html/parser.dart';
import '../app_config.dart';
import '../components/my_app_bar.dart';
import '../materials.dart';

class ProductDetailsPage extends StatefulWidget {
  ProductModel productModel;
  ProductDetailsPage({super.key, required this.productModel});

  @override
  State<ProductDetailsPage> createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  @override
  void initState() {
    ProductDetailsPageController pageController =
        Get.put(ProductDetailsPageController());
    pageController.loadproductDetails(codeId: widget.productModel.CodeId);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        text: widget.productModel.RecTitleAr ?? "",
        profileIcon: true,
        showLogo: false,
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: GetBuilder<ProductDetailsPageController>(
              init: Get.find<ProductDetailsPageController>(),
              builder: (controller) => controller.loadDetails.value
                  ? SizedBox(
                      height: MediaQuery.of(context).size.height / 3,
                      child: Center(
                        child: CircularProgressIndicator(
                          color: iconColor,
                        ),
                      ),
                    )
                  : ListBody(
                      children: [
                        Hero(
                          tag: widget.productModel.RecTitleAr! ?? "",
                          child: Container(
                            // height: Size.fromHeight(height),
                            child: InkWell(
                              onTap: () => Get.to(() => ImageViewerWidget(
                                  url: mediaUrl +
                                      widget.productModel!.CodeId! +
                                      '-' +
                                      widget.productModel!.ColorCode! +
                                      '.jpg')),
                              child: CachedNetworkImage(
                                fit: BoxFit.fill,
                                imageUrl: mediaUrl +
                                    widget.productModel!.CodeId! +
                                    '-' +
                                    widget.productModel!.ColorCode! +
                                    '.jpg',
                                progressIndicatorBuilder:
                                    (context, url, downloadProgress) => Center(
                                  child: CircularProgressIndicator(
                                      color: iconColor),
                                ),
                                errorWidget: (context, url, error) =>
                                    Icon(Icons.error),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 200,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: controller.media!.map(
                              (e) {
                                return SmallImageWiget(
                                    url: (mediaUrl +
                                        e.CodeId! +
                                        '-' +
                                        e.Color! +
                                        (e.Number!.isNotEmpty
                                            ? '-' + e.Number!
                                            : '') +
                                        '.' +
                                        e.Extention!));
                              },
                            ).toList(),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  MyText(
                                    text: widget.productModel.CodeId ?? "",
                                    color: iconColor,
                                    bold: false,
                                  ),
                                  MyText(
                                    text: "رمز الموديل : ",
                                    color: iconColor,
                                    bold: true,
                                  ),
                                ],
                              ),
                              MyText(
                                text: 'السعر : ',
                                color: iconColor,
                                size: 18,
                                bold: true,
                                textAlign: TextAlign.center,
                              ),
                              Container(
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 2),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    widget.productModel.Price2 != null
                                        ? MyText(
                                            text: widget.productModel.Price2 ??
                                                "",
                                            color: iconColor,
                                            bold: false,
                                          )
                                        : Container(),
                                    MyText(
                                      text: widget.productModel.Price1 ?? "",
                                      color: Colors.grey.shade600,
                                      bold: false,
                                      textLinned:
                                          widget.productModel.Price2 != null,
                                    ),
                                  ],
                                ),
                              ),
                              MyElevatedButton(
                                backGroundColorcolor: primaryColor,
                                bold: true,
                                text: 'جدول القياسات',
                                textColor: iconColor,
                                textSize: 18,
                                onTap: () => Get.defaultDialog(
                                    title: 'جدول القياسات',
                                    titleStyle: getTextStyle(
                                        bold: FontWeight.bold,
                                        color: iconColor,
                                        size: 18.0),
                                    content: SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height /
                                              3,
                                      width:
                                          MediaQuery.of(context).size.width / 2,
                                      child: SingleChildScrollView(
                                        child: SizeTableWidget(
                                            tableSize: controller.tableSize!),
                                      ),
                                    )),
                              ),
                              MyText(
                                text: 'القياسات : ',
                                color: iconColor,
                                size: 18,
                                bold: true,
                                textAlign: TextAlign.right,
                              ),
                              MyText(
                                text: widget.productModel.Size ?? "",
                                color: iconColor,
                                size: 18,
                                bold: false,
                                textAlign: TextAlign.center,
                              ),
                              MyText(
                                text: 'الوصف : ',
                                color: iconColor,
                                size: 18,
                                bold: true,
                                textAlign: TextAlign.right,
                              ),
                              widget.productModel.RecDesc1Ar != null
                                  ? MyText(
                                      text: parse(parse(widget.productModel
                                                      .RecDesc1Ar ??
                                                  "")
                                              .body!
                                              .text)
                                          .documentElement!
                                          .text,
                                      color: iconColor,
                                      size: 18,
                                      bold: false,
                                      textAlign: TextAlign.center,
                                    )
                                  : Container(),
                              widget.productModel.RecDesc2Ar != null
                                  ? MyText(
                                      text: parse(parse(widget.productModel
                                                      .RecDesc2Ar ??
                                                  "")
                                              .body!
                                              .text)
                                          .documentElement!
                                          .text,
                                      color: iconColor,
                                      size: 18,
                                      bold: false,
                                      textAlign: TextAlign.center,
                                    )
                                  : Container(),
                              Container(
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 2),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    IconButton(
                                      onPressed: () {
                                        controller.showReplacment.value =
                                            !controller.showReplacment.value;
                                        controller.update();
                                      },
                                      icon: Icon(Icons.arrow_downward),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        controller.showReplacment.value =
                                            !controller.showReplacment.value;
                                        controller.update();
                                      },
                                      child: MyText(
                                          text: 'إقرأ المزيد',
                                          bold: false,
                                          color: iconColor,
                                          size: 14),
                                    ),
                                    const Spacer(),
                                    MyText(
                                      text: 'سياسة التبديل : ',
                                      color: iconColor,
                                      size: 18,
                                      bold: true,
                                      textAlign: TextAlign.right,
                                    ),
                                  ],
                                ),
                              ),
                              Visibility(
                                visible: controller.showReplacment.value,
                                child: MyText(
                                  text: controller.replacement!.RecDescAr ?? "",
                                  color: iconColor,
                                  size: 18,
                                  bold: false,
                                  textAlign: TextAlign.right,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Icon(
                                    Icons.remove_red_eye,
                                    color: iconColor,
                                  ),
                                  MyText(
                                    text: widget.productModel.Xview ?? "",
                                    color: iconColor,
                                    size: 18,
                                    bold: false,
                                    textAlign: TextAlign.center,
                                  ),
                                  MyText(
                                    text: 'عدد الزيارات : ',
                                    color: iconColor,
                                    size: 18,
                                    bold: true,
                                    textAlign: TextAlign.right,
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 2,
                        )
                      ],
                    ),
            ),
          ),
          Column(
            children: [
              Spacer(),
              MyElevatedButton(
                bold: true,
                text: 'شراء',
                textColor: iconColor,
                backGroundColorcolor: primaryColor,
                onTap: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
