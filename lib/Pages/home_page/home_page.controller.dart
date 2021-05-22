import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePageController extends GetxController {
  final pageViewController = PageController();

  @override
  void dispose() {
    super.dispose();
    pageViewController.dispose();
  }
}
