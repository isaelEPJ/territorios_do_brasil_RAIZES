import 'package:fl_territorios_do_brasil/Pages/index/appbar/sub_appbar_index.dart';
import 'package:fl_territorios_do_brasil/utils/app_colors.dart';
import 'package:fl_territorios_do_brasil/utils/app_images.dart';
import 'package:fl_territorios_do_brasil/utils/app_text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends PreferredSize {
  final BuildContext context;
  final String title;
  HomeAppBar({required this.context, required this.title})
      : super(
          preferredSize:
              Size.fromHeight(MediaQuery.of(context).size.height * 0.33),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.27,
            decoration: BoxDecoration(
                // color: AppColors.lightBackGround,
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        'https://images.unsplash.com/photo-1586268289955-023596ac0cfe?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=667&q=80'))),
            child: Stack(
              children: <Widget>[
                Container(
                  alignment: Alignment.topLeft,
                  height: MediaQuery.of(context).size.height * 0.25,
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  margin: EdgeInsets.only(top: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 55,
                            height: 55,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              border:
                                  Border.all(width: 3, color: AppColors.light),
                              image: DecorationImage(
                                image: NetworkImage(
                                  "https://avatars.githubusercontent.com/u/70731079?v=4",
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          Container(
                            padding: EdgeInsets.all(6),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: AppColors.lightBackGround.withOpacity(0.9),
                            ),
                            child: Text.rich(
                              TextSpan(
                                  text: 'Bem vindo, ',
                                  style: AppTextStyles.subTitle,
                                  children: [
                                    TextSpan(
                                        text: title,
                                        style: AppTextStyles.title),
                                  ]),
                            ),
                          ),
                        ],
                      ),
                      Card(
                        elevation: 6,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6)),
                        child: Container(
                          width: 36,
                          height: 33,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              image: DecorationImage(
                                fit: BoxFit.contain,
                                image: AssetImage(
                                  AppImages.notificationImage,
                                ),
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment(0.0, 1.9),
                  child: SubAppBarIndex(),
                ),
              ],
            ),
          ),
        );
}
