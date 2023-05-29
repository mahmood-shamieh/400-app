import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fourhundred_app/components/sub_category_widget.dart';
import 'package:fourhundred_app/get_controlles/sub_category_page.dart';
import 'package:fourhundred_app/materials.dart';
import 'package:fourhundred_app/models/main_section_model.dart';
import 'package:fourhundred_app/models/subtitle_model.dart';
import 'package:get/get.dart';

import '../components/my_app_bar.dart';

class SubCategoryPage extends StatefulWidget {
  MainSectionModel section;
  SubtitleModel subtitle;
  SubCategoryPage({super.key, required this.section, required this.subtitle});

  @override
  State<SubCategoryPage> createState() => _SubCategoryPageState();
}

class _SubCategoryPageState extends State<SubCategoryPage> {
  @override
  void initState() {
    SubCategoryPageController subCategoryPageController =
        Get.put<SubCategoryPageController>(SubCategoryPageController());
    subCategoryPageController.getSubCategory(
        int.parse(widget.section.Id!), int.parse(widget.subtitle.Id!));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        showLogo: false,
        text: widget.subtitle.RecTitleAr,
        profileIcon: true,
      ),
      body: GetBuilder<SubCategoryPageController>(
        builder: (controller) {
          if (controller.isloading.value) {
            return Center(
              child: CircularProgressIndicator(
                color: iconColor,
              ),
            );
          } else {
            return Wrap(
              alignment: WrapAlignment.center,
              children: controller.subCategories
                  .map(
                    (e) => SubCategoryWidget(
                        subCategoryModel: e, mainSectionModel: widget.section),
                  )
                  .toList(),
            );
          }
        },
      ),
    );
  }
}
