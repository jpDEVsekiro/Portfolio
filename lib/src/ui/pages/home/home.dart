import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/src/application/controllers/home_controller.dart';

class Home extends GetView<HomeController> {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            tooltip: 'GitHub',
            icon: const Icon(Icons.code),
            onPressed: controller.goToGitHub,
          ),
          IconButton(
            tooltip: 'LinkedIn',
            icon: const Icon(Icons.person),
            onPressed: controller.goToLinkedIn,
          ),
        ],
      ),
      body: Scrollbar(
        controller: controller.scrollController,
        interactive: true,
        child: SingleChildScrollView(
            controller: controller.scrollController,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: double.infinity,
                  height: 800,
                  child: Image.asset(
                    'assets/gifs/hilda-and-tepig-watching-castelia-city-pokemon-pixel-moewalls-com_AdobeExpress.gif',
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
