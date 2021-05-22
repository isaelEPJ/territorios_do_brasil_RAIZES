import 'package:fl_territorios_do_brasil/model/user_model.dart';
import 'package:fl_territorios_do_brasil/utils/app_colors.dart';
import 'package:flutter/material.dart';

class UserPage extends StatefulWidget {
  @override
  _UserPageState createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  @override
  Widget build(BuildContext context) {
    final user = ModalRoute.of(context)!.settings.arguments as UserModel;

    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(user.nickName),
            SizedBox(width: 1),
          ],
        ),
        backgroundColor: AppColors.primaryColor,
      ),
      body: Container(
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(width: 10),
                Text('data'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
