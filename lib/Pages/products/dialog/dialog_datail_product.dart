import 'package:fl_territorios_do_brasil/model/products_model.dart';
import 'package:fl_territorios_do_brasil/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class DialogDetailProduct extends StatelessWidget {
  final ProductsModel product;
  DialogDetailProduct({required this.product});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text('Descriçao',
              overflow: TextOverflow.clip,
              style: AppTextStyles.textButtonPrimary),
          Text(product.description, style: AppTextStyles.subtitleTile),
          Text('História', style: AppTextStyles.textButtonPrimary),
          Text(product.history, style: AppTextStyles.subtitleTile),
        ],
      ),
    );
  }
}
