import 'package:flutter/material.dart';
import 'package:fourhundred_app/materials.dart';
import 'package:fourhundred_app/pages/splash_screen.dart';
import 'package:fourhundred_app/components/style_widget.dart';
import 'package:fourhundred_app/pages/stepper_login_page.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() async {
  await GetStorage.init();
  // GetStorage().erase();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      localizationsDelegates: [GlobalMaterialLocalizations.delegate],
      supportedLocales: [Locale('en'), Locale('ar')],
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: SplashScreen(),
    );
  }
}
