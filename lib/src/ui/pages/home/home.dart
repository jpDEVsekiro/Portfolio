import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/src/application/controllers/home_controller.dart';

class Home extends GetView<HomeController> {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF6246C1),
      appBar: AppBar(
        actions: [
          IconButton(
            tooltip: 'GitHub',
            icon: const Icon(Icons.code),
            onPressed: controller.goToGitHub,
          ),
          IconButton(
            tooltip: 'about me',
            icon: const Icon(Icons.code),
            onPressed: controller.scrollAboutMe,
          ),
          IconButton(
            tooltip: 'LinkedIn',
            icon: const Icon(Icons.person),
            onPressed: controller.goToLinkedIn,
          ),
          IconButton(
            tooltip: 'Whatsapp',
            icon: const Icon(Icons.person),
            onPressed: controller.goToWhatsApp,
          ),
          IconButton(
            tooltip: 'e-mail',
            icon: const Icon(Icons.person),
            onPressed: controller.goToEmail,
          ),
        ],
      ),
      body: Scrollbar(
        controller: controller.scrollController,
        interactive: true,
        child: SingleChildScrollView(
            controller: controller.scrollController,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: double.infinity,
                  height: 800,
                  child: Image.asset(
                    'assets/gifs/hilda-and-tepig-watching-castelia-city-pokemon-pixel-moewalls-com_AdobeExpress.gif',
                    fit: BoxFit.fitHeight,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'About me',
                    style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                const CircleAvatar(
                  radius: 100,
                  backgroundImage: AssetImage(
                    'assets/images/me.jpeg',
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
