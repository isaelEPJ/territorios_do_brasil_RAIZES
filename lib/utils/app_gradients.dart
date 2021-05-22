import 'package:fl_territorios_do_brasil/utils/app_colors.dart';
import 'package:flutter/material.dart';

class AppGradients {
  static final linear = LinearGradient(
    colors: [
      AppColors.lightsecoundaryColor,
      AppColors.lightprimaryColor,
    ],
  );
}

class AppGradientsVertical {
  static final linear = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    // transform: GradientTransform(linear),
    colors: [
      AppColors.lightprimaryColor,
      AppColors.lightsecoundaryColor,
    ],
  );
}
// stops: [
//     0.004,
//     0.895
//   ], transform: GradientRotation(2.13959913 * pi));
