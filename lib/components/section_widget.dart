import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fourhundred_app/app_config.dart';
import 'package:fourhundred_app/components/my_text.dart';
import 'package:fourhundred_app/components/style_widget.dart';
import 'package:fourhundred_app/materials.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:fourhundred_app/models/main_section_model.dart';
import 'package:fourhundred_app/pages/subtitle-page.dart';
import 'package:get/get.dart';

class SectionWidget extends StatelessWidget {
  MainSectionModel mainSectionModel;
  SectionWidget({super.key, required this.mainSectionModel});

  @override
  Widget build(BuildContext context) {
    // print(mediaUrl + imageURL!);
    return InkWell(
      onTap: () => Get.to(
        () => SubtitlePage(
          setion: mainSectionModel,
        ),
      ),
      child: Container(
        // height: const Size.fromHeight(200).height,
        width: const Size.fromWidth(300).width,
        margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 5),

        child: Card(
          child: Stack(
            children: [
              Container(
                width: const Size.fromWidth(300).width,
                height: const Size.fromHeight(200).height,
                child: CachedNetworkImage(
                  fit: BoxFit.fill,
                  imageUrl: mainSectionModel.RecThumb == null
                      ? ""
                      : mediaUrl + mainSectionModel.RecThumb!,
                  progressIndicatorBuilder: (context, url, downloadProgress) =>
                      Center(
                    child: CircularProgressIndicator(color: iconColor),
                  ),
                  errorWidget: (context, url, error) => Icon(Icons.error),
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                left: 0,
                child: Container(
                    padding: const EdgeInsets.all(2),
                    width: const Size.fromWidth(300).width,
                    decoration:
                        BoxDecoration(color: primaryColor.withAlpha(1000)),
                    child: Center(
                      child: MyText(
                        textAlign: TextAlign.center,
                        text: mainSectionModel.RecTitleAr ?? "",
                        color: iconColor,
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
