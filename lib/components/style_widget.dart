import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fourhundred_app/components/bottom_bar.dart';
import 'package:fourhundred_app/components/my_app_bar.dart';
import 'package:fourhundred_app/materials.dart';
import 'package:fourhundred_app/pages/home_page.dart';

class StyleWidget extends StatefulWidget {
  StyleWidget({super.key});

  @override
  State<StyleWidget> createState() => _StyleWidgetState();
}

class _StyleWidgetState extends State<StyleWidget> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: direction,
      child: Scaffold(
        drawer: Drawer(),
        appBar: MyAppBar(),
        // bottomNavigationBar: MyBottomBar(),
        body: HomePage(),
      ),
    );
  }
}
