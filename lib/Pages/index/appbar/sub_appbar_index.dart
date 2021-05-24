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
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: Text(
          'Bem-vindo ao Raízes, aqui você terá uma experiência que é a cara do Brasil! Nós unimos conhecimento, produtos e oportunidades de vivenciar toda a riqueza que os territórios do Norte-Nordeste podem oferecer aqui, na palma da sua mão.',
          style: AppTextStyles.presentText,
          overflow: TextOverflow.ellipsis,
          maxLines: 4,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
