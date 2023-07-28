import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/src/application/controllers/home_controller.dart';

class Home extends GetView<HomeController> {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scrollbar(
        controller: controller.scrollController,
        interactive: true,
        child: SingleChildScrollView(
            controller: controller.scrollController,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/gifs/hilda-and-tepig-watching-castelia-city-pokemon-pixel-moewalls-com_AdobeExpress.gif',
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  fit: BoxFit.fitWidth,
                ),
                Image.asset(
                  'assets/gifs/hilda-and-tepig-watching-castelia-city-pokemon-pixel-moewalls-com_AdobeExpress.gif',
                  width: Get.width,
                  height: Get.height,
                  fit: BoxFit.cover,
                )
              ],
            )),
      ),
    );
  }
}
