import 'package:fl_territorios_do_brasil/Pages/profile/edit_account.dart';
import 'package:fl_territorios_do_brasil/utils/app_colors.dart';
import 'package:fl_territorios_do_brasil/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SubAppBarProfile extends StatelessWidget {
  final String title;
  SubAppBarProfile({required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.1,
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            width: 65,
            height: 65,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              border: Border.all(width: 1, color: AppColors.light),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  "https://avatars.githubusercontent.com/u/70731079?v=4",
                ),
              ),
            ),
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.07,
          child: Column(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.01),
              Text(
                title,
                style: AppTextStyles.title,
              ),
              Text(
                '$title@gmail.com',
                style: AppTextStyles.bodyGrey,
              ),
            ],
          ),
        ),
        SizedBox(width: 10),
        IconButton(
          icon: Icon(Icons.settings),
          onPressed: () {
            Get.to(EditAccount());
          },
        ),
      ],
    );
  }
}
