import 'package:fl_territorios_do_brasil/Pages/products/products_screen.dart';
import 'package:fl_territorios_do_brasil/model/products_model.dart';
import 'package:fl_territorios_do_brasil/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class IndexProduct extends StatelessWidget {
  final ProductsModel product;
  IndexProduct({required this.product});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(
          ProductsScreen(product: product),
        );
      },
      child: Card(
        elevation: 10,
        child: Container(
          width: MediaQuery.of(context).size.width * 0.45,
          height: MediaQuery.of(context).size.height * 0.35,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            // color: Color(0xFFC4C4C4),
          ),
          child: Column(
            children: [
              Container(
                width: double.maxFinite,
                height: MediaQuery.of(context).size.height * 0.24,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(product.imageUrl),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                width: double.maxFinite,
                height: MediaQuery.of(context).size.height * 0.09,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product.name,
                      style: AppTextStyles.titleCard,
                    ),
                    Text(
                      'R\$ ${product.price.toStringAsFixed(2).replaceAll('.', ',')}',
                      style: AppTextStyles.bodyGrey,
                    ),
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
