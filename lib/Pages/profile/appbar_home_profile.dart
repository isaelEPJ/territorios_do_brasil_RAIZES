import 'package:fl_territorios_do_brasil/utils/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomAppBarProfile extends PreferredSize {
  final title;
  final BuildContext context;

  CustomAppBarProfile({this.title, required this.context})
      : super(
          preferredSize:
              Size.fromHeight(MediaQuery.of(context).size.height * 0.1),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.16,
            padding: EdgeInsets.only(top: 22),
            decoration: BoxDecoration(color: AppColors.lightBackGround),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // crossAxisAlignment: CrossAxisAlignment.,
              children: <Widget>[
                IconButton(
                    alignment: Alignment.center,
                    splashColor: AppColors.lightBackGround,
                    icon: Icon(
                      Icons.chat_outlined,
                      size: 28,
                      color: AppColors.secoundaryColor,
                    ),
                    onPressed: () {
                      print('Abrir chat');
                    }),
              ],
            ),
          ),
        );
}
