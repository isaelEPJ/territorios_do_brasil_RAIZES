import 'package:fl_territorios_do_brasil/Pages/components/carousel_network.dart';
import 'package:fl_territorios_do_brasil/model/products_model.dart';
import 'package:fl_territorios_do_brasil/utils/app_colors.dart';
import 'package:fl_territorios_do_brasil/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class AgendamentosPage extends StatelessWidget {
  final List<ProductsModel> products;
  AgendamentosPage({required this.products});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Visitas',
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.25,
              width: double.maxFinite,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://images.unsplash.com/photo-1582812532891-7968f272fc9a?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fHNjaGVkdWxlfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
                ),
              ),
              child: CarouselComponent(images: products[0].imageUrl),
            ),
            // Container(
            //   height: MediaQuery.of(context).size.height * 0.56,
            //   child: ListView.builder(
            //     itemCount: ProductsData.length,
            //     itemBuilder: (BuildContext context, int index) {
            //       final ProductsModel product = ProductsData[index];
            //       return ProductComponent(
            //         product: product,
            //       );
            //     },
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
