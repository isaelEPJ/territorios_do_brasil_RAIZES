import 'package:fl_territorios_do_brasil/Pages/products/product_component.dart';
import 'package:fl_territorios_do_brasil/data/products_data.dart';
import 'package:fl_territorios_do_brasil/model/products_model.dart';
import 'package:fl_territorios_do_brasil/utils/app_colors.dart';
import 'package:fl_territorios_do_brasil/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class ProductsPage extends StatefulWidget {
  @override
  _ProductsPageState createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
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
                'Produtos',
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
      body: Column(
        children: [
          Container(
              height: MediaQuery.of(context).size.height * 0.3,
              child: Container(
                color: AppColors.dark,
              )),
          Container(
            height: MediaQuery.of(context).size.height * 0.45,
            child: ListView.builder(
              itemCount: ProductsData.length,
              itemBuilder: (BuildContext context, int index) {
                final ProductsModel product = ProductsData[index];
                return ProductComponent(
                  product: product,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
