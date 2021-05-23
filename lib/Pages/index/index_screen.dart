import 'package:fl_territorios_do_brasil/Pages/index/appbar/home_appbar_index.dart';
import 'package:fl_territorios_do_brasil/Pages/index/index_place.dart';
import 'package:fl_territorios_do_brasil/Pages/index/index_product.dart';
import 'package:fl_territorios_do_brasil/data/places_data.dart';
import 'package:fl_territorios_do_brasil/data/products_data.dart';
import 'package:fl_territorios_do_brasil/model/places_model.dart';
import 'package:fl_territorios_do_brasil/model/products_model.dart';
import 'package:fl_territorios_do_brasil/utils/app_colors.dart';
import 'package:fl_territorios_do_brasil/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class IndexScreen extends StatefulWidget {
  @override
  _IndexScreenState createState() => _IndexScreenState();
}

class _IndexScreenState extends State<IndexScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(
        context: context,
        title: 'Isael Junior',
        onClick: () {
          Get.defaultDialog(
              title: 'Menu',
              content: Column(
                children: [
                  TextButton.icon(
                      style: TextButton.styleFrom(
                        primary: AppColors.primaryColor,
                      ),
                      onPressed: () {},
                      icon: Icon(
                        Icons.person,
                        size: 25,
                      ),
                      label: Text(
                        'Voce tem atualizaçoes cadastrais',
                        style: TextStyle(fontSize: 13),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                      ))
                ],
              ));
        },
      ),
      body: SingleChildScrollView(
        child: Container(
          // height: MediaQuery.of(context).size.height * 0.8,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(height: 60),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    Column(
                      children: [
                        Container(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            'Descubra sobre Produtos!',
                            style: AppTextStyles.textButtonBlack,
                          ),
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.02),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.35,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: ProductsData.length,
                            itemBuilder: (context, index) {
                              final ProductsModel product = ProductsData[index];
                              return Row(
                                children: [
                                  IndexProduct(
                                    product: product,
                                  ),
                                  SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.05),
                                ],
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.44,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              'Descubra alguns Lugares!',
                              style: AppTextStyles.textButtonBlack,
                            ),
                          ),
                          SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.02),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.35,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: PlacesData.length,
                              itemBuilder: (context, index) {
                                final PlacesModel place = PlacesData[index];
                                return Row(
                                  children: [
                                    IndexPlace(place: place),
                                    SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.05),
                                  ],
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    // SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
