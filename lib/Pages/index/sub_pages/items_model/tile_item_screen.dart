// import 'package:fl_territorios_do_brasil/Pages/index/sub_pages/foodtruck/foodtruck_page.dart';
// import 'package:fl_territorios_do_brasil/model/food_truck_model.dart';
// import 'package:fl_territorios_do_brasil/utils/app_colors.dart';
// import 'package:fl_territorios_do_brasil/utils/app_images.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class TileItem extends StatelessWidget {
//   final FoodTruckModel foodTruck;
//   TileItem({required this.foodTruck});
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       elevation: 5,
//       margin: EdgeInsets.symmetric(vertical: 2, horizontal: 5),
//       child: Container(
//         width: double.maxFinite,
//         child: ListTile(
//           onTap: () {
//             Get.to(FoodTruckPage(foodTruck: foodTruck));
//           },
//           // tileColor: AppColors.secondaryLightBackGround,
//           leading: Container(
//             width: MediaQuery.of(context).size.width * 0.2,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(5),
//               image: DecorationImage(
//                 fit: BoxFit.cover,
//                 image: foodTruck.imageUrl != null
//                     ? NetworkImage(
//                         foodTruck.imageUrl!,
//                       )
//                     : NetworkImage(
//                         AppImages.cenario_512,
//                       ),
//               ),
//             ),
//           ),
//           title: Column(
//             children: [
//               Text(
//                 foodTruck.name,
//                 overflow: TextOverflow.ellipsis,
//                 maxLines: 1,
//                 softWrap: false,
//               ),
//               SizedBox(height: 2),
//             ],
//           ),
//           subtitle: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: <Widget>[
//               Row(
//                 // mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Row(
//                     children: [
//                       Icon(
//                         Icons.star,
//                         color: Colors.yellow,
//                         size: 18,
//                       ),
//                       Text(
//                         '',
//                         // style: AppTextStyles.body,
//                       ),
//                     ],
//                   ),
//                   // SizedBox(width: 5),
//                   Container(
//                     width: MediaQuery.of(context).size.width * 0.34,
//                     child: Text(
//                       foodTruck.surname,
//                       overflow: TextOverflow.fade,
//                       maxLines: 1,
//                       softWrap: false,
//                       // style: AppTextStyles.body,
//                     ),
//                   ),
//                 ],
//               ),
//               SizedBox(height: 5),
//               Row(
//                 children: [
//                   Icon(
//                     Icons.location_on_outlined,
//                     size: 15,
//                     // color: AppColors.dark,
//                   ),
//                   Text(
//                     ' ',
//                     // style: AppTextStyles.body,
//                   ),
//                 ],
//               ),
//             ],
//           ),
//           trailing: IconButton(
//               icon: foodTruck.favorite
//                   ? Icon(
//                       Icons.favorite,
//                       color: AppColors.lightRed,
//                     )
//                   : Icon(
//                       Icons.favorite,
//                       // color: AppColors.secondaryLightBackGround,
//                     ),
//               onPressed: () {}),
//         ),
//       ),
//     );
//   }
// }
