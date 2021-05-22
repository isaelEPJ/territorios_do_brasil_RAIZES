import 'package:fl_territorios_do_brasil/utils/app_colors.dart';
import 'package:fl_territorios_do_brasil/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class Placespage extends StatefulWidget {
  @override
  _PlacespageState createState() => _PlacespageState();
}

class _PlacespageState extends State<Placespage> {
  bool isSearch = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: isSearch
            ? Container(
                alignment: Alignment.center,
                height: MediaQuery.of(context).size.height * 0.08,
                padding: EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColors.light.withOpacity(0.4),
                ),
                child: TextField(
                  decoration: InputDecoration(
                      // border: OutlineInputBorder(
                      //   borderRadius: BorderRadius.circular(6),
                      // ),
                      hintText: 'Pesquisar'),
                ),
              )
            : Text(
                'Lugares',
                style: AppTextStyles.appBartitle,
              ),
        iconTheme: IconThemeData(color: AppColors.light, size: 25),
        backgroundColor: AppColors.lightGrey,
        actions: [
          IconButton(
            icon: Icon(
              Icons.search,
              size: 26,
              color: AppColors.light,
            ),
            onPressed: () {
              setState(() {
                isSearch = !isSearch;
              });
            },
          ),
          IconButton(
            icon: Icon(
              Icons.card_membership_sharp,
              size: 25,
              color: AppColors.light.withOpacity(0.6),
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
