import 'package:fl_territorios_do_brasil/Pages/places/places_screen.dart';
import 'package:fl_territorios_do_brasil/data/places_data.dart';
import 'package:fl_territorios_do_brasil/model/places_model.dart';
import 'package:fl_territorios_do_brasil/utils/app_colors.dart';
import 'package:fl_territorios_do_brasil/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Placespage extends StatefulWidget {
  @override
  _PlacespageState createState() => _PlacespageState();
}

class _PlacespageState extends State<Placespage> {
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
                'Lugares',
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
                height: MediaQuery.of(context).size.height * 0.3,
                child: Container(
                  color: AppColors.dark,
                )),
            Container(
              height: MediaQuery.of(context).size.height * 0.5,
              child: ListView.builder(
                itemCount: PlacesData.length,
                itemBuilder: (BuildContext context, int index) {
                  final PlacesModel place = PlacesData[index];
                  return Container(
                    margin: EdgeInsets.symmetric(vertical: 3, horizontal: 5),
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6)),
                      child: ListTile(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6)),
                        onTap: () {
                          Get.to(PlacesScreen(
                            place: place,
                          ));
                        },
                        leading: Container(
                          width: 50,
                          height: 50,
                          padding: EdgeInsets.all(3),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(place.imageUrl[0]),
                            ),
                          ),
                        ),
                        title: Container(
                            margin: EdgeInsets.only(left: 6),
                            child: Text(place.name)),
                        trailing: Container(
                          width: 65,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.favorite),
                              ),
                              Text('54'),
                            ],
                          ),
                        ),
                      ),
                    ),
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
