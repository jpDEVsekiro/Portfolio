import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/src/application/bindings/home_binding.dart';
import 'package:portfolio/src/ui/pages/home/home.dart';

void main() async {
  runApp(GetMaterialApp(
    defaultTransition: Transition.noTransition,
    debugShowCheckedModeBanner: false,
    home: const Home(),
    routes: {
      '/home': (context) => const Home(),
    },
    initialBinding: HomeBinding(),
  ));
}
