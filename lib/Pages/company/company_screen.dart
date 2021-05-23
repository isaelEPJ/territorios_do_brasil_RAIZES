import 'package:fl_territorios_do_brasil/Pages/components/carousel_network.dart';
import 'package:fl_territorios_do_brasil/model/company_model.dart';
import 'package:fl_territorios_do_brasil/utils/app_colors.dart';
import 'package:fl_territorios_do_brasil/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class CompanyScreen extends StatelessWidget {
  final CompanyModel company;
  CompanyScreen({required this.company});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          company.name,
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
        ],
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 15, vertical: 30),
        child: Card(
          elevation: 10,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CarouselComponent(images: company.imageUrl),
              Column(
                children: [
                  Container(
                    width: double.maxFinite,
                    // height: MediaQuery.of(context).size.height * 0.3,
                    // margin: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        Column(
                          children: [
                            SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      company.name,
                                      style: GoogleFonts.roboto(
                                          color: AppColors.dark,
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      '${company.products.length} Atividades',
                                      style: GoogleFonts.roboto(
                                          color: AppColors.dark,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.favorite,
                                    color: AppColors.primaryColor,
                                  ),
                                )
                              ],
                            ),
                            Container(
                              height: 30,
                              // width: 100,
                              margin: EdgeInsets.all(10),
                              child: Row(
                                children: [
                                  Container(
                                    height: 30,
                                    width: 90,
                                    child: ListView.builder(
                                      scrollDirection: Axis.horizontal,
                                      itemCount: 5,
                                      itemBuilder:
                                          (BuildContext context, int index) {
                                        return Icon(
                                          Icons.star,
                                          size: 18,
                                          color: AppColors.primaryColor,
                                        );
                                      },
                                    ),
                                  ),
                                  Text(
                                    ' 128 Avaliaçoes',
                                    style: AppTextStyles.bodyGrey,
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 10),
                            Container(
                              alignment: Alignment.centerLeft,
                              width: MediaQuery.of(context).size.width * 0.8,
                              child: Text(
                                company.description,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 10,
                                style: AppTextStyles.subTitle,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.circular(6),
                      border: Border.all(
                        width: 1,
                        color: AppColors.primaryColor,
                      ),
                    ),
                    child: TextButton(
                      child: Text(
                        'Visitar',
                        style: GoogleFonts.roboto(
                            color: AppColors.light,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {
                        // abrir pagina da empresa
                        Get.to(CompanyScreen(company: company));
                      },
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      border: Border.all(
                        width: 1,
                        color: AppColors.primaryColor,
                      ),
                    ),
                    child: TextButton(
                      child: Text(
                        'Localizaçao',
                        style: AppTextStyles.textButtonPrimary,
                      ),
                      onPressed: () {
                        // abrir pagina da empresa
                        Get.to(CompanyScreen(company: company));
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.0001),
            ],
          ),
        ),
      ),
    );
  }
}
