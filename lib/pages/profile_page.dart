import 'package:flutter/material.dart';
import 'package:fourhundred_app/components/my_app_bar.dart';
import 'package:get/get.dart';

import '../materials.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        profileIcon: true,
        showLogo: false,
        text: "الملف الشخصي",
      ),
    );
  }
}
