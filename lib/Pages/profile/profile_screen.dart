import 'package:fl_territorios_do_brasil/Pages/profile/custom_appbar_profile.dart';
import 'package:fl_territorios_do_brasil/utils/app_colors.dart';
import 'package:fl_territorios_do_brasil/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarProfile(
        context: context,
        title: 'Isael junior',
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(horizontal: 6),
              margin: EdgeInsets.only(top: 70),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: Card(
                      elevation: 10,
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.1,
                        width: MediaQuery.of(context).size.width * 0.3,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          // color: AppColors.lightGreen,
                        ),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                'Contribuiçoes',
                                style: AppTextStyles.titleCard,
                              ),
                              Text(
                                '8',
                                style: GoogleFonts.roboto(
                                    color: AppColors.dark,
                                    fontSize: 25,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Card(
                      elevation: 10,
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.1,
                        width: MediaQuery.of(context).size.width * 0.30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          // color: AppColors.lightGreen,
                        ),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                'Visitas',
                                style: AppTextStyles.titleCard,
                              ),
                              Text(
                                '123',
                                style: GoogleFonts.roboto(
                                    color: AppColors.dark,
                                    fontSize: 25,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Card(
                      elevation: 10,
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.1,
                        width: MediaQuery.of(context).size.width * 0.30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          // color: AppColors.lightGreen,
                        ),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                'Curtidas',
                                style: AppTextStyles.titleCard,
                              ),
                              Text(
                                '12',
                                style: GoogleFonts.roboto(
                                    color: AppColors.dark,
                                    fontSize: 25,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 6),
              margin: EdgeInsets.only(top: 7),
              height: MediaQuery.of(context).size.height * 0.15,
              width: double.maxFinite,
              child: Card(
                  child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: AppColors.primaryColor,
                ),
                child: Center(
                  child: Text(
                    'Parabens, voce está no Nível 45!!',
                    style: AppTextStyles.title,
                  ),
                ),
              )),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                Card(
                  elevation: 5,
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.1,
                    width: MediaQuery.of(context).size.width * 0.9,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: TextButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.arrow_circle_up_sharp),
                      label: Text(
                        'Configurar direçao',
                        style: AppTextStyles.titleCard,
                      ),
                    ),
                  ),
                ),
                TextButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.person),
                  label: Text(
                    'Configurar Pessoa',
                    style: AppTextStyles.titleCard,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
