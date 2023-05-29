import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fourhundred_app/components/subtitle_widget.dart';
import 'package:fourhundred_app/get_controlles/subtitle_page.dart';
import 'package:fourhundred_app/materials.dart';
import 'package:fourhundred_app/models/main_section_model.dart';
import 'package:get/get.dart';

import '../components/my_app_bar.dart';

class SubtitlePage extends StatefulWidget {
  MainSectionModel setion;
  SubtitlePage({super.key, required this.setion});

  @override
  State<SubtitlePage> createState() => _SubtitlePageState();
}

class _SubtitlePageState extends State<SubtitlePage> {
  @override
  void initState() {
    SubtitlePageController subtitlePageController =
        Get.put<SubtitlePageController>(SubtitlePageController());
    subtitlePageController.loadSubtitles(int.parse(widget.setion.Id!));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        showLogo: false,
        text: widget.setion.RecTitleAr,
        profileIcon: true,
      ),
      body: GetBuilder<SubtitlePageController>(
        builder: (controller) {
          if (controller.isLoading.value) {
            return Center(
              child: CircularProgressIndicator(
                color: iconColor,
              ),
            );
          } else {
            return Wrap(
              alignment: WrapAlignment.center,
              children: controller.subtitles
                  .map((e) => SubtitleWidget(
                        subtitleModel: e,
                        section: widget.setion,
                      ))
                  .toList(),
            );
          }
        },
      ),
    );
  }
}
