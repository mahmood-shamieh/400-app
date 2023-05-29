import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fourhundred_app/components/section_widget.dart';
import 'package:fourhundred_app/models/main_section_model.dart';
import 'package:shimmer/shimmer.dart';

class MainSectionWidget extends StatelessWidget {
  List<MainSectionModel> sections;
  bool? loading;
  MainSectionWidget({super.key, required this.sections, this.loading});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: const Size.fromHeight(200).height,
      child: ListView(
          scrollDirection: Axis.horizontal,
          children: loading ?? false
              ? [1, 2, 3, 4, 5]
                  .map((e) => Container(
                        width: const Size.fromWidth(300).width,
                        height: const Size.fromHeight(200).height,
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
              : sections
                  .map((e) => SectionWidget(
                        mainSectionModel: e,
                      ))
                  .toList()),
    );
  }
}
