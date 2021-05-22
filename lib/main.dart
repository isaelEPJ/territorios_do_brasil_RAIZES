import 'package:fl_territorios_do_brasil/Pages/home_page/home_page_bindings.dart';
import 'package:fl_territorios_do_brasil/Pages/home_page/home_page_screen.dart';
import 'package:fl_territorios_do_brasil/utils/app_colors.dart';
import 'package:fl_territorios_do_brasil/utils/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

void main() {
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  // SystemChrome.setEnabledSystemUIOverlays(
  //     [SystemUiOverlay.bottom, SystemUiOverlay.top]);
  runApp(TerritoriosDoBrasil());
}

class TerritoriosDoBrasil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Territorios Do Brasil',
      theme: ThemeData(
        primaryColor: AppColors.primaryColor,
        accentColor: AppColors.secoundaryColor,
        errorColor: AppColors.darkRed,
        splashColor: AppColors.lightsecoundaryColor,
        dialogBackgroundColor: AppColors.lightBackGround,
        backgroundColor: AppColors.lightBackGround,
      ),
      // home: HomePage(),
      getPages: [
        GetPage(
            name: AppRoutes.HOME,
            binding: HomePageBindings(),
            page: () => HomePage(Get.find())),
      ],
    );
  }
}
