import 'package:fl_territorios_do_brasil/Pages/company/company_list.dart';
import 'package:fl_territorios_do_brasil/Pages/components/carousel_network.dart';
import 'package:fl_territorios_do_brasil/Pages/places/places_screen.dart';
import 'package:fl_territorios_do_brasil/Pages/products/dialog/dialog_datail_product.dart';
import 'package:fl_territorios_do_brasil/model/products_model.dart';
import 'package:fl_territorios_do_brasil/utils/app_colors.dart';
import 'package:fl_territorios_do_brasil/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductsScreen extends StatelessWidget {
  final ProductsModel product;
  ProductsScreen({required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          product.name,
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
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          height: MediaQuery.of(context).size.height * 0.8,
          child: Card(
            elevation: 10,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    CarouselComponent(images: product.imageUrl),
                    SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              product.name,
                              style: GoogleFonts.roboto(
                                  color: AppColors.dark,
                                  fontSize: 21,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '23 Atividades',
                              style: GoogleFonts.roboto(
                                  color: AppColors.dark,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.001),
                            Container(
                              height: 35,
                              // width: 100,
                              // margin: EdgeInsets.all(10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
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
                                          size: 14,
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
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: double.maxFinite,
                      // height: MediaQuery.of(context).size.height * 0.3,
                      // margin: EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        children: [
                          Column(
                            children: [
                              SizedBox(height: 10),
                              Container(
                                alignment: Alignment.centerLeft,
                                width: MediaQuery.of(context).size.width * 0.8,
                                child: Column(
                                  children: [
                                    Text(
                                      // product.description,
                                      'O fruto pequeno tem um formato similar ao da pêra, polpa branca, cremosa e suculenta, ligeiramente ácida e leitosa, rica em vitamina C. Possui teor de proteína que varia entre 1,3 e 3%. Sua polpa pode ser consumida madura in natura e é matéria-prima para produção de deliciosos produtos como: geleias, bolos, biscoitos, compotas, sorvetes, licores, vinho, entre outros.',
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 5,
                                      softWrap: false,
                                      style: AppTextStyles.subtitleTile,
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
                                              title: product.name,
                                              content: DialogDetailProduct(
                                                  product: product),
                                              cancel: ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                    shape:
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        6)),
                                                    primary:
                                                        AppColors.primaryColor),
                                                onPressed: () {
                                                  Get.back();
                                                },
                                                child: Text(
                                                  'Voltar',
                                                  style: GoogleFonts.roboto(
                                                      color: AppColors.light,
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
                                                    primary: AppColors.grey),
                                                onPressed: () {
                                                  Get.to(ProductsScreen(
                                                      product: product));
                                                },
                                                child: Text(
                                                  'Visitar',
                                                  style: GoogleFonts.roboto(
                                                      color: AppColors.light,
                                                      fontSize: 17,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                              ),
                                            );
                                          },
                                        )
                                      ],
                                    )
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
                  padding: EdgeInsets.all(10),
                  width: double.maxFinite,
                  margin: EdgeInsets.only(right: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: AppColors.primaryColor,
                          onPrimary: AppColors.light,
                        ),
                        onPressed: () {
                          Get.to(CompanyList());
                        },
                        child: Text(
                          'Fornecedores',
                          style: AppTextStyles.textButtonLight,
                        ),
                      )
                    ],
                  ),
                ),
                // SizedBox(height: MediaQuery.of(context).size.height * 0.0001),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
