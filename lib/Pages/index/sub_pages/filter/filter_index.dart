import 'package:fl_territorios_do_brasil/Pages/components/buttons/litle_button.dart';
import 'package:fl_territorios_do_brasil/utils/app_colors.dart';
import 'package:flutter/material.dart';

class FilterIndex extends StatefulWidget {
  @override
  _FilterIndexState createState() => _FilterIndexState();
}

class _FilterIndexState extends State<FilterIndex> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.08,
      alignment: Alignment.bottomCenter,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              LitleButton(
                icon: Icon(
                  Icons.sort_by_alpha,
                  size: 15,
                  color: AppColors.dark,
                ),
                onPress: () {},
                borderColor: AppColors.secoundaryColor,
                color: AppColors.lightsecoundaryColor,
                // title: 'Filtrar',
                withArrowDrop: true,
              ),
              LitleButton(
                icon: Icon(
                  Icons.timer,
                  size: 15,
                  color: AppColors.dark,
                ),
                onPress: () {},
                borderColor: AppColors.secoundaryColor,
                color: AppColors.lightsecoundaryColor,
                withArrowDrop: false,
              ),
              LitleButton(
                icon: Icon(
                  Icons.location_on_outlined,
                  size: 15,
                  color: AppColors.dark,
                ),
                onPress: () {},
                borderColor: AppColors.secoundaryColor,
                color: AppColors.lightsecoundaryColor,
                withArrowDrop: true,
              ),
            ],
          ),
          Divider(),
        ],
      ),
    );
  }
}
