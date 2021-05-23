import 'package:fl_territorios_do_brasil/Pages/index/appbar/sub_appbar_index.dart';
import 'package:fl_territorios_do_brasil/Pages/profile/profile_screen.dart';
import 'package:fl_territorios_do_brasil/Pages/profile/sub_appbar_profile.dart';
import 'package:fl_territorios_do_brasil/utils/app_colors.dart';
import 'package:fl_territorios_do_brasil/utils/app_images.dart';
import 'package:fl_territorios_do_brasil/utils/app_text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomAppBarProfile extends PreferredSize {
  final BuildContext context;
  final String title;
  CustomAppBarProfile({required this.context, required this.title})
      : super(
          preferredSize:
              Size.fromHeight(MediaQuery.of(context).size.height * 0.2),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.2,
            decoration: BoxDecoration(
              // color: AppColors.lightBackGround,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    'https://images.unsplash.com/photo-1555363209-11a72e372ccc?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8YW1hem9uaWF8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
              ),
            ),
            child: Stack(
              children: <Widget>[
                Container(
                  alignment: Alignment.topLeft,
                  height: MediaQuery.of(context).size.height * 0.2,
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  margin: EdgeInsets.only(top: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [],
                  ),
                ),
                Align(
                  alignment: Alignment(0.0, 2.5),
                  child: SubAppBarProfile(
                    title: 'Isael Junior',
                  ),
                ),
              ],
            ),
          ),
        );
}
