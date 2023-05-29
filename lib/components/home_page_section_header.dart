import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:fourhundred_app/components/my_text.dart';
import 'package:fourhundred_app/materials.dart';

class HomePageSeectionHeader extends StatelessWidget {
  String? text;
  Function()? navigation;
  IconData? icon;
  HomePageSeectionHeader({super.key, this.icon, this.text, this.navigation});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          MyText(
            text: text ?? "",
            color: iconColor,
            size: 16,
            bold: true,
          ),
          InkWell(
            onTap: navigation,
            child: Icon(
              icon,
              color: iconColor,
            ),
          )
        ],
      ),
    );
  }
}
