// import 'package:fl_territorios_do_brasil/utils/app_colors.dart';
// import 'package:fl_territorios_do_brasil/utils/app_text_styles.dart';
// import 'package:flutter/material.dart';

// class MoreOptionsDialog extends StatelessWidget {
//   final FoodTruckModel foodTruck;
//   MoreOptionsDialog({required this.foodTruck});
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         TextButton.icon(
//           onPressed: () {},
//           icon: Icon(
//             Icons.favorite,
//             size: 20,
//             color: foodTruck.favorite ? AppColors.darkRed : AppColors.lightGrey,
//           ),
//           label: Expanded(
//             child: foodTruck.favorite
//                 ? Text(
//                     'Desmarcar como favorito',
//                     overflow: TextOverflow.ellipsis,
//                     maxLines: 1,
//                     softWrap: false,
//                     // style: AppTextStyles.body,
//                   )
//                 : Text(
//                     'Marcar como favorito',
//                     overflow: TextOverflow.ellipsis,
//                     maxLines: 1,
//                     softWrap: false,
//                     // style: AppTextStyles.body,
//                   ),
//           ),
//         ),
//         TextButton.icon(
//           onPressed: () {},
//           icon: Icon(
//             Icons.grading_rounded,
//             size: 20,
//             color: AppColors.dark,
//           ),
//           label: Expanded(
//             child: Text(
//               'Ir Para a Categoria',
//               overflow: TextOverflow.ellipsis,
//               maxLines: 1,
//               softWrap: false,
//               style: AppTextStyles.body,
//             ),
//           ),
//         ),
//         TextButton.icon(
//           onPressed: () {},
//           icon: Icon(
//             Icons.arrow_right_alt_outlined,
//             size: 20,
//             color: AppColors.dark,
//           ),
//           label: Text(
//             'Detalhes deste Food Truck',
//             overflow: TextOverflow.ellipsis,
//             maxLines: 1,
//             softWrap: false,
//             style: AppTextStyles.body,
//           ),
//         ),
//         TextButton.icon(
//           onPressed: () {},
//           icon: Icon(
//             Icons.chat,
//             size: 20,
//             color: AppColors.dark,
//           ),
//           label: Text(
//             'Abrir Chat com o Food Truck',
//             overflow: TextOverflow.ellipsis,
//             maxLines: 1,
//             softWrap: false,
//             style: AppTextStyles.body,
//           ),
//         ),
//         TextButton.icon(
//           onPressed: () {},
//           icon: Icon(
//             Icons.map,
//             size: 20,
//             color: AppColors.dark,
//           ),
//           label: Text(
//             'Abrir Local no Mapa',
//             overflow: TextOverflow.ellipsis,
//             maxLines: 1,
//             softWrap: false,
//             style: AppTextStyles.body,
//           ),
//         ),
//       ],
//     );
//   }
// }
