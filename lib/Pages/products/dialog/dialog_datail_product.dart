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
          Text(
              'O fruto pequeno tem um formato similar ao da pêra, polpa branca, cremosa e suculenta, ligeiramente ácida e leitosa, rica em vitamina C. Possui teor de proteína que varia entre 1,3 e 3%. Sua polpa pode ser consumida madura in natura e é matéria-prima para produção de deliciosos produtos como: geleias, bolos, biscoitos, compotas, sorvetes, licores, vinho, entre outros.',
              style: AppTextStyles.subtitleTile),
          Text('História', style: AppTextStyles.textButtonPrimary),
          Text('fskpenrprep nqpiwfnkewnvpwpnvipwnv mmqpkfm eqmpwes.',
              style: AppTextStyles.subtitleTile),
        ],
      ),
    );
  }
}
