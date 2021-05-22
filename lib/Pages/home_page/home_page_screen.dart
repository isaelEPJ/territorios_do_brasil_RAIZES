import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:fl_territorios_do_brasil/Pages/home_page/home_page.controller.dart';
import 'package:fl_territorios_do_brasil/Pages/index/index_screen.dart';
import 'package:fl_territorios_do_brasil/Pages/places/places_page.dart';
import 'package:fl_territorios_do_brasil/Pages/products/products_page.dart';
import 'package:fl_territorios_do_brasil/Pages/profile/profile_screen.dart';
import 'package:fl_territorios_do_brasil/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
          Placespage(),
          ProductsPage(),
          ProfileScreen(),
        ],
      ),
      bottomNavigationBar: AnimatedBuilder(
          animation: widget.controller.pageViewController,
          builder: (context, snapshot) {
            return BottomNavyBar(
              selectedIndex:
                  widget.controller.pageViewController.page?.round() ?? 0,
              showElevation: true,
              itemCornerRadius: 24,
              curve: Curves.easeIn,
              onItemSelected: (index) {
                // setState(() => _currentIndex = index);
                widget.controller.pageViewController.jumpToPage(index);
              },
              items: <BottomNavyBarItem>[
                BottomNavyBarItem(
                  icon: Icon(Icons.home),
                  title: Text('Inicio'),
                  textAlign: TextAlign.center,
                  activeColor: Theme.of(context).accentColor,
                  inactiveColor: AppColors.lightsecoundaryColor,
                ),
                BottomNavyBarItem(
                  icon: Icon(Icons.map),
                  title: Text('Categorias'),
                  textAlign: TextAlign.center,
                  activeColor: Theme.of(context).accentColor,
                  inactiveColor: AppColors.lightsecoundaryColor,
                ),
                BottomNavyBarItem(
                  icon: Icon(Icons.widgets),
                  title: Text('Mensagens'),
                  textAlign: TextAlign.center,
                  activeColor: Theme.of(context).accentColor,
                  inactiveColor: AppColors.lightsecoundaryColor,
                ),
                BottomNavyBarItem(
                  icon: Icon(Icons.person),
                  title: Text('Perfil'),
                  textAlign: TextAlign.center,
                  activeColor: Theme.of(context).accentColor,
                  inactiveColor: AppColors.lightsecoundaryColor,
                ),
              ],
            );
          }),
    );
  }
}
