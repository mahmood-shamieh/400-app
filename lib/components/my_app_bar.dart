import 'package:flutter/material.dart';
import 'package:fourhundred_app/components/my_text.dart';
import 'package:fourhundred_app/pages/profile_page.dart';
import 'package:get/get.dart';
import 'package:fourhundred_app/materials.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  bool? profileIcon;
  bool? showLogo;
  String? text;
  MyAppBar({super.key, this.profileIcon, this.showLogo, this.text});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(color: iconColor),
      actions: [
        (profileIcon ?? false)
            ? Container()
            : IconButton(
                onPressed: () {
                  Get.to(() => ProfilePage());
                },
                icon: const Icon(
                  Icons.person,
                ),
              ),
      ],
      centerTitle: true,
      title: showLogo ?? true
          ? SizedBox(
              height: Size.fromHeight(40).height,
              child: Image.asset('assets/images/logo_light.png'))
          : MyText(
              text: text!,
              color: iconColor,
              bold: true,
            ),
      backgroundColor: primaryColor,
    );
  }

  @override
  Size get preferredSize => AppBar().preferredSize;
}
