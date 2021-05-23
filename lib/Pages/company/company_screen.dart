import 'package:fl_territorios_do_brasil/Pages/company/agendamento/agendamentos_page.dart';
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            CarouselComponent(images: company.imageUrl),
            Container(
              // margin: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              height: MediaQuery.of(context).size.height * 0.55,
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),

              child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // CarouselComponent(images: company.imageUrl),
                    Column(
                      children: [
                        Container(
                          width: double.maxFinite,
                          // height: MediaQuery.of(context).size.height * 0.3,
                          margin: EdgeInsets.symmetric(horizontal: 20),

                          child: Column(
                            children: [
                              Column(
                                children: [
                                  SizedBox(height: 20),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.6,
                                            child: Text(
                                              company.name,
                                              overflow: TextOverflow.ellipsis,
                                              maxLines: 2,
                                              style: GoogleFonts.roboto(
                                                  color: AppColors.dark,
                                                  fontSize: 25,
                                                  fontWeight: FontWeight.bold),
                                            ),
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
                                            itemBuilder: (BuildContext context,
                                                int index) {
                                              return Icon(
                                                Icons.star,
                                                size: 18,
                                                color: AppColors.primaryColor,
                                              );
                                            },
                                          ),
                                        ),
                                        Text(
                                          ' ${company.products.length} Avaliaçoes',
                                          style: AppTextStyles.bodyGrey,
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    width:
                                        MediaQuery.of(context).size.width * 0.8,
                                    child: Column(
                                      children: [
                                        Text(
                                          company.description,
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 10,
                                          style: AppTextStyles.subTitle,
                                        ),
                                        Row(
                                          children: [
                                            SizedBox(
                                              width: 1,
                                            ),
                                            TextButton(
                                              child: Text('Leia mais..',
                                                  style: AppTextStyles
                                                      .textButtonPrimary),
                                              onPressed: () {
                                                Get.defaultDialog(
                                                  title: company.name,
                                                  // content: DialogDetailProduct(
                                                  //     product: product),
                                                  cancel: ElevatedButton(
                                                    style: ElevatedButton.styleFrom(
                                                        shape:
                                                            RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            6)),
                                                        primary: AppColors
                                                            .primaryColor),
                                                    onPressed: () {
                                                      Get.back();
                                                    },
                                                    child: Text(
                                                      'Voltar',
                                                      style: GoogleFonts.roboto(
                                                          color:
                                                              AppColors.light,
                                                          fontSize: 17,
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    ),
                                                  ),
                                                  confirm: ElevatedButton(
                                                    style: ElevatedButton.styleFrom(
                                                        shape:
                                                            RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            6)),
                                                        primary:
                                                            AppColors.grey),
                                                    onPressed: () {
                                                      // Get.to(ProductsScreen(
                                                      //     product: product));
                                                    },
                                                    child: Text(
                                                      'Visitar',
                                                      style: GoogleFonts.roboto(
                                                          color:
                                                              AppColors.light,
                                                          fontSize: 17,
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    ),
                                                  ),
                                                );
                                              },
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                                side: BorderSide(
                                    width: 0.5, color: AppColors.primaryColor),
                              ),
                              primary: AppColors.primaryColor,
                              onPrimary: AppColors.light,
                            ),
                            onPressed: () {
                              Get.to(CompanyScreen(company: company));
                            },
                            child: Text(
                              'Visitar',
                              style: AppTextStyles.textButtonLight,
                            ),
                          ),
                          TextButton(
                            style: TextButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  side: BorderSide(
                                      width: 1, color: AppColors.primaryColor)),
                              primary: AppColors.primaryColor,
                              // onPrimary: AppColors.primaryColor,
                            ),
                            onPressed: () {
                              Get.to(AgendamentosPage(
                                products: company.products,
                              ));
                            },
                            child: Text('Enviar interesse',
                                style: AppTextStyles.textButtonPrimary),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
