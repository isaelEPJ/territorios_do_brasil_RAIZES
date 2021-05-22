// import 'package:flutter/material.dart';
// import 'package:fotruck/Pages/index/sub_pages/foodtruck/foodtruck_page.dart';
// import 'package:fotruck/Pages/index/sub_pages/items_model/more_options_dialog.dart';
// import 'package:fotruck/model/food_truck_model.dart';
// import 'package:fotruck/utils/core.dart';
// import 'package:get/get.dart';

// class RetangItem extends StatelessWidget {
//   final FoodTruckModel foodTruck;
//   RetangItem({required this.foodTruck});

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: () {
//         Get.to(FoodTruckPage(foodTruck: foodTruck));
//       },
//       child: Card(
//         elevation: 2,
//         margin: EdgeInsets.symmetric(horizontal: 5, vertical: 2),
//         child: Container(
//           width: double.maxFinite,
//           height: MediaQuery.of(context).size.height * 0.17,
//           child: Row(
//             children: <Widget>[
//               Container(
//                 // margin: EdgeInsets.only(left: 5),
//                 width: MediaQuery.of(context).size.width * 0.33,
//                 height: MediaQuery.of(context).size.height * 0.17,
//                 padding: EdgeInsets.all(5),
//                 child: Container(
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(5),
//                     image: DecorationImage(
//                       fit: BoxFit.cover,
//                       image: foodTruck.imageUrl != null
//                           ? NetworkImage(
//                               foodTruck.imageUrl!,
//                             )
//                           : NetworkImage(
//                               AppImages.noImageImage,
//                             ),
//                     ),
//                   ),
//                 ),
//               ),
//               Expanded(
//                 child: Container(
//                   margin: EdgeInsets.symmetric(horizontal: 10),
//                   // width: MediaQuery.of(context).size.width * 0.5,
//                   // height: MediaQuery.of(context).size.height * 0.17,
//                   child: Container(
//                     // padding: EdgeInsets.all(10),
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.spaceAround,
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Expanded(
//                               flex: 3,
//                               child: Text(
//                                 foodTruck.name,
//                                 overflow: TextOverflow.ellipsis,
//                                 maxLines: 2,
//                                 // softWrap: false,
//                                 style: AppTextStyles.heading15,
//                               ),
//                             ),
//                             SizedBox(
//                                 width:
//                                     MediaQuery.of(context).size.width * 0.04),
//                             IconButton(
//                               alignment: Alignment.topCenter,
//                               icon: Icon(
//                                 Icons.more_horiz_rounded,
//                                 size: 23,
//                                 color: AppColors.dark,
//                               ),
//                               onPressed: () {
//                                 // Get.dialog(Scaffold(body: Text('data')));
//                                 Get.defaultDialog(
//                                   title: 'Opções',
//                                   content:
//                                       MoreOptionsDialog(foodTruck: foodTruck),
//                                 );
//                               },
//                             ),
//                           ],
//                         ),
//                         Text(
//                           foodTruck.description,
//                           overflow: TextOverflow.ellipsis,
//                           maxLines: 2,
//                           style: AppTextStyles.body,
//                         ),
//                         Row(
//                           children: [
//                             Container(
//                               // width: MediaQuery.of(context).size.width * 0.3,
//                               alignment: Alignment.center,
//                               decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(10),
//                                 color: AppColors.secondaryLightBackGround,
//                               ),
//                               child: Row(
//                                 children: [
//                                   SizedBox(width: 10),
//                                   Text(
//                                     foodTruck.category,
//                                     overflow: TextOverflow.ellipsis,
//                                     maxLines: 1,
//                                     softWrap: false,
//                                     style: AppTextStyles.bodyGreen15,
//                                   ),
//                                   SizedBox(width: 10),
//                                 ],
//                               ),
//                             ),
//                           ],
//                         ),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceAround,
//                               children: [
//                                 SizedBox(width: 3),
//                                 Icon(
//                                   Icons.star,
//                                   color: Colors.yellow,
//                                   size: 18,
//                                 ),
//                                 Text(
//                                   '${foodTruck.stars.toString()}',
//                                   overflow: TextOverflow.ellipsis,
//                                   maxLines: 1,
//                                   softWrap: false,
//                                   style: AppTextStyles.body,
//                                 ),
//                                 SizedBox(width: 3),
//                               ],
//                             ),
//                             Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Icon(
//                                   Icons.location_on_outlined,
//                                   size: 16,
//                                   color: AppColors.dark,
//                                 ),
//                                 Text(
//                                   'Á 2 km',
//                                   style: AppTextStyles.body11,
//                                 ),
//                               ],
//                             ),
//                             Icon(
//                               Icons.favorite,
//                               size: 17,
//                               color: foodTruck.favorite
//                                   ? AppColors.darkRed
//                                   : AppColors.lightGrey,
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
