import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:fl_territorios_do_brasil/Pages/home_page/home_page.controller.dart';
import 'package:fl_territorios_do_brasil/Pages/index/index_screen.dart';
import 'package:fl_territorios_do_brasil/Pages/places/places_list.dart';
import 'package:fl_territorios_do_brasil/Pages/products/products_list.dart';
import 'package:fl_territorios_do_brasil/Pages/profile/edit_account.dart';
import 'package:fl_territorios_do_brasil/Pages/profile/profile_screen.dart';
import 'package:fl_territorios_do_brasil/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  final HomePageController controller;
  HomePage(this.controller);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    changeStatusBar();
  }

  changeStatusBar() {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.light.copyWith(
          statusBarColor: AppColors.lightBackGround,
          // systemNavigationBarColor: AppColors.light,
          statusBarIconBrightness: Brightness.dark),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: widget.controller.pageViewController,
        children: <Widget>[
          IndexScreen(),
          ProductsPage(),
          Placespage(),
          EditAccount(),
        ],
      ),
      bottomNavigationBar: AnimatedBuilder(
          animation: widget.controller.pageViewController,
          builder: (context, snapshot) {
            return BottomNavigationBar(
              currentIndex:
                  widget.controller.pageViewController.page?.round() ?? 0,
              onTap: (index) {
                widget.controller.pageViewController.jumpToPage(index);
              },
              iconSize: 22,
              selectedItemColor: AppColors.primaryColor,
              unselectedItemColor: AppColors.grey,
              selectedLabelStyle: GoogleFonts.roboto(
                  color: AppColors.primaryColor,
                  fontSize: 14,
                  fontWeight: FontWeight.normal),
              unselectedLabelStyle: GoogleFonts.roboto(
                  color: AppColors.grey,
                  fontSize: 14,
                  fontWeight: FontWeight.normal),
              showUnselectedLabels: true,
              items: [
                BottomNavigationBarItem(
                    icon: Icon(Icons.home_outlined), label: 'Home'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.explore_rounded), label: 'Produtos'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.map_outlined), label: 'Locais'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person_outline), label: 'Perfil'),
              ],
            );
          }),
    );
  }
}
