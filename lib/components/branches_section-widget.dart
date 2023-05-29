import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fourhundred_app/components/branches_widget.dart';
import 'package:fourhundred_app/components/section_widget.dart';
import 'package:fourhundred_app/models/main_section_model.dart';
import 'package:fourhundred_app/models/site_artcile_model.dart';
import 'package:shimmer/shimmer.dart';

class BranchesSectionWidget extends StatelessWidget {
  List<SiteArticelModel> articls;
  bool? loading;
  BranchesSectionWidget({super.key, required this.articls, this.loading});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: const Size.fromHeight(200).height,
      child: ListView(
          scrollDirection: Axis.horizontal,
          children: loading ?? false
              ? [1, 2, 3]
                  .map((e) => Container(
                        width: const Size.fromWidth(300).width,
                        margin: const EdgeInsets.symmetric(
                            vertical: 4, horizontal: 5),
                        child: Shimmer.fromColors(
                            baseColor: Colors.grey.shade300,
                            highlightColor: Colors.grey.shade100,
                            child: Container(
                              decoration:
                                  const BoxDecoration(color: Colors.amber),
                            )),
                      ))
                  .toList()
              : articls
                  .map((e) => BranchesWidget(
                        imageURL: e.RecThumb,
                        text: e.RecTitleAr,
                      ))
                  .toList()),
    );
  }
}
