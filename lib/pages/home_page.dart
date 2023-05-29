import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:fourhundred_app/components/branches_section-widget.dart';
import 'package:fourhundred_app/components/branches_widget.dart';
import 'package:fourhundred_app/components/home_page_section_header.dart';
import 'package:fourhundred_app/components/latest_products_widget.dart';
import 'package:fourhundred_app/components/main_section_widget.dart';
import 'package:fourhundred_app/get_controlles/home_page.dart';
import 'package:fourhundred_app/materials.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ListBody(children: [
        const SizedBox(
          height: 10,
        ),
        HomePageSeectionHeader(
            text: "الأقسام الرئيسية", icon: Icons.all_inclusive_sharp),
        GetBuilder<HomePageController>(
            init: Get.put(HomePageController()),
            builder: (controller) => MainSectionWidget(
                sections: controller.mainSections,
                loading: controller.mainSectionLoading.value)),
        HomePageSeectionHeader(
            text: "الأكثر طلباً", icon: Icons.all_inclusive_sharp),
        GetBuilder<HomePageController>(
            init: Get.put(HomePageController()),
            builder: (controller) => LatestProductsWidget(
                  loading: controller.latestproductLoading.value,
                  products: controller.latestProducts,
                )),
        HomePageSeectionHeader(text: "جديدنا", icon: Icons.all_inclusive_sharp),
        GetBuilder<HomePageController>(
            init: Get.put(HomePageController()),
            builder: (controller) => LatestProductsWidget(
                  loading: controller.mostproductLoading.value,
                  products: controller.mostSellingProduct,
                )),
        HomePageSeectionHeader(text: "الأفرع", icon: Icons.all_inclusive_sharp),
        GetBuilder<HomePageController>(
            init: Get.put(HomePageController()),
            builder: (controller) => BranchesSectionWidget(
                  loading: controller.branchesLoading.value,
                  articls: controller.articls,
                ))
      ]),
    );
  }
}
