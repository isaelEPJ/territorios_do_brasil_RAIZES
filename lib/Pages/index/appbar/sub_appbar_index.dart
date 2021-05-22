import 'package:fl_territorios_do_brasil/utils/app_colors.dart';
import 'package:fl_territorios_do_brasil/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class SubAppBarIndex extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      height: MediaQuery.of(context).size.height * 0.13,
      decoration: BoxDecoration(
          border: Border.all(width: 0.5),
          color: AppColors.primaryColor.withOpacity(0.95),
          borderRadius: BorderRadius.circular(6)),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Text(
          'Aqui no Raizes você pode agendar sua visita e aprender muito sobre a produção e mercadorias do Nordeste! Navegue na aplicação e encontre o que deseja!',
          style: AppTextStyles.presentText,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
