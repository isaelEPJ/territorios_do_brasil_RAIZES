import 'package:fl_territorios_do_brasil/utils/app_colors.dart';
import 'package:fl_territorios_do_brasil/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EditAccount extends StatefulWidget {
  EditAccount();

  @override
  _EditAccountState createState() => _EditAccountState();
}

class _EditAccountState extends State<EditAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: AppColors.light,
          ),
          onPressed: () {},
        ),
        backgroundColor: AppColors.grey,
        title: Text(
          'Perfil',
          style: GoogleFonts.roboto(
              color: AppColors.light,
              fontSize: 22,
              fontWeight: FontWeight.w400),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.search, color: AppColors.light)),
          IconButton(
              onPressed: () {}, icon: Icon(Icons.info, color: AppColors.light)),
        ],
      ),
    );
  }
}
