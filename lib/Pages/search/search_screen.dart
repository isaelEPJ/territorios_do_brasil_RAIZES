import 'package:fl_territorios_do_brasil/Pages/search/appbar_home_search.dart';
import 'package:fl_territorios_do_brasil/data/search_item_data.dart';
import 'package:fl_territorios_do_brasil/utils/app_colors.dart';
import 'package:fl_territorios_do_brasil/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarSearch(
        context: context,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        height: MediaQuery.of(context).size.height * 0.8,
        child: GridView(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 3 / 2,
            maxCrossAxisExtent: 200,
          ),
          children: SearchItemData.map((item) {
            return Stack(
              children: <Widget>[
                Expanded(
                  flex: 4,
                  child: Container(
                    width: 200,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(item.imageUrl),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 20,
                  alignment: Alignment.bottomCenter,
                  decoration: BoxDecoration(
                    color: AppColors.lightBackGround.withOpacity(0.6),
                  ),
                  child: Text(
                    item.title,
                    style: AppTextStyles.subtitleTile,
                  ),
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
