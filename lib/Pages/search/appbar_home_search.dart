import 'package:fl_territorios_do_brasil/utils/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomAppBarSearch extends PreferredSize {
  final title;
  final BuildContext context;
  CustomAppBarSearch({this.title, required this.context})
      : super(
          preferredSize:
              Size.fromHeight(MediaQuery.of(context).size.height * 0.1),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.16,
            padding: EdgeInsets.only(top: 22),
            decoration: BoxDecoration(color: AppColors.lightBackGround),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 260,
                  height: 45,
                  // decoration: BoxDecoration(
                  //   borderRadius: BorderRadius.circular(10),
                  //   color: AppColors.secondaryLightBackGround,
                  // ),
                  child: TextField(
                    textAlignVertical: TextAlignVertical.bottom,
                    autofocus: false,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: AppColors.secoundaryColor,
                        hintText: 'Pesquisar',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none,
                        ),
                        suffixIcon: IconButton(
                          splashColor: AppColors.lightBackGround,
                          icon: Icon(
                            Icons.search,
                            size: 27,
                            color: AppColors.dark,
                          ),
                          onPressed: () {},
                        )),
                  ),
                ),
              ],
            ),
          ),
        );
}
