import 'package:fl_territorios_do_brasil/Pages/components/carousel_network.dart';
import 'package:fl_territorios_do_brasil/Pages/places/place_component.dart';
import 'package:fl_territorios_do_brasil/data/company_data.dart';
import 'package:fl_territorios_do_brasil/model/company_model.dart';
import 'package:fl_territorios_do_brasil/model/places_model.dart';
import 'package:fl_territorios_do_brasil/utils/app_colors.dart';
import 'package:fl_territorios_do_brasil/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class PlacesScreen extends StatelessWidget {
  final PlacesModel place;
  PlacesScreen({required this.place});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          place.name,
          style: AppTextStyles.appBartitle,
        ),
        iconTheme: IconThemeData(color: AppColors.light, size: 25),
        backgroundColor: AppColors.lightGrey,
        actions: [
          IconButton(
            icon: Icon(
              Icons.info,
              size: 26,
              color: AppColors.light,
            ),
            onPressed: () {},
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
      body: Column(
        children: [
          CarouselComponent(images: place.imageUrl),
          Container(
            width: double.maxFinite,
            height: MediaQuery.of(context).size.height * 0.58,
            // margin: EdgeInsets.symmetric(horizontal: 20),
            child: ListView.builder(
              itemCount: place.companyList.length,
              itemBuilder: (BuildContext context, int index) {
                final CompanyModel company = CompanyData[index];
                return PlaceComponent(company: company);
              },
            ),
          )
        ],
      ),
    );
  }
}
