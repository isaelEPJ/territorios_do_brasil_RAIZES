import 'package:fl_territorios_do_brasil/model/company_model.dart';
import 'package:fl_territorios_do_brasil/utils/app_colors.dart';
import 'package:fl_territorios_do_brasil/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class CompanyComponent extends StatelessWidget {
  final CompanyModel company;
  CompanyComponent({required this.company});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onLongPress: () {
        Get.defaultDialog(
            title: 'Opçoes',
            content: Column(
              children: [
                TextButton.icon(
                  style: TextButton.styleFrom(
                    primary: AppColors.primaryColor,
                  ),
                  onPressed: () {
                    // Get.to(ProductsScreen(product: product));
                  },
                  icon: Icon(
                    Icons.widgets_outlined,
                    size: 25,
                  ),
                  label: Text(
                    'Ir para produto',
                    style: TextStyle(fontSize: 13),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                ),
                TextButton.icon(
                  style: TextButton.styleFrom(
                    primary: AppColors.primaryColor,
                  ),
                  onPressed: () {
                    // Get.to(ProductsScreen(product: product));
                  },
                  icon: Icon(
                    Icons.person,
                    size: 25,
                  ),
                  label: Text(
                    'Ver Vendedor',
                    style: TextStyle(fontSize: 13),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                ),
              ],
            ));
      },
      child: Container(
        // width: MediaQuery.of(context).size.width * 0.9,
        height: MediaQuery.of(context).size.height * 0.3,
        margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(6)),
        child: Card(
          elevation: 10,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.45,
                    // height: MediaQuery.of(context).size.height * 0.15,
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    // decoration: BoxDecoration(
                    //   border: Border.all(width: 1),
                    // ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          company.name,
                          style: GoogleFonts.roboto(
                              color: AppColors.dark,
                              fontSize: 22,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(height: 8),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.3,
                          child: Text(
                            company.description,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            style: GoogleFonts.roboto(
                                color: AppColors.dark.withOpacity(0.8),
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // width: MediaQuery.of(context).size.width * 0.45,
                    // height: MediaQuery.of(context).size.height * 0.1,
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      border: Border.all(
                        width: 1,
                        color: AppColors.primaryColor,
                      ),
                    ),
                    child: TextButton(
                      child: Text(
                        'Saiba mais',
                        style: AppTextStyles.textButtonPrimary,
                      ),
                      onPressed: () {
                        // Get.to(ProductsScreen(product: product));
                      },
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.3,
                    height: MediaQuery.of(context).size.height * 0.24,
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      image: DecorationImage(
                        image: NetworkImage(company.imageUrl[0]),
                      ),
                    ),
                  ),
                  SizedBox(height: 1),
                ],
              ),
              SizedBox(
                width: 1,
              )
            ],
          ),
        ),
      ),
    );
  }
}
