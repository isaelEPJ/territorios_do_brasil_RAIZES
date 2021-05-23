import 'package:fl_territorios_do_brasil/Pages/company/company_component.dart';
import 'package:fl_territorios_do_brasil/data/company_data.dart';
import 'package:fl_territorios_do_brasil/model/company_model.dart';
import 'package:fl_territorios_do_brasil/utils/app_colors.dart';
import 'package:fl_territorios_do_brasil/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CompanyList extends StatefulWidget {
  final CompanyModel company;
  CompanyList({required this.company});

  @override
  _CompanyListState createState() => _CompanyListState();
}

class _CompanyListState extends State<CompanyList> {
  bool isSearch = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: isSearch
            ? Container(
                alignment: Alignment.center,
                height: MediaQuery.of(context).size.height * 0.06,
                margin: EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColors.light.withOpacity(0.4),
                ),
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none, hintText: '  Pesquisar'),
                ),
              )
            : Text(
                'Fornecedores',
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.25,
              width: double.maxFinite,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: AppColors.dark.withOpacity(0.5),
                // image: DecorationImage(
                //   fit: BoxFit.cover,
                //   image: NetworkImage(
                //       'https://images.unsplash.com/photo-1517383898750-55acaa953838?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8cGl0YXlhfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
                // ),
              ),
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColors.light.withOpacity(0.5),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Localizaçao.',
                      style: GoogleFonts.roboto(
                          color: AppColors.dark,
                          fontSize: 27,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      '${widget.company.local.estado} - ${widget.company.local.regiao}',
                      style: GoogleFonts.roboto(
                          color: AppColors.dark,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.56,
              child: ListView.builder(
                itemCount: CompanyData.length,
                itemBuilder: (BuildContext context, int index) {
                  final CompanyModel company = CompanyData[index];
                  return CompanyComponent(
                    company: company,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
