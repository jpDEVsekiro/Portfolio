import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeController extends GetxController {
  ScrollController scrollController = ScrollController();
  final Uri _gitHub = Uri.parse('https://github.com/jpDEVsekiro');
  final Uri _linkedin =
      Uri.parse('https://www.linkedin.com/in/jo%C3%A3o-pedro--/');
  final Uri _whatsApp = Uri.parse('https://wa.me/5511959991724');
  final Uri _email = Uri.parse('mailto:devjpdesenvolver@gmail.com');

  void goToGitHub() {
    launchUrl(_gitHub);
  }

  void goToLinkedIn() {
    launchUrl(_linkedin);
  }

  void goToWhatsApp() {
    launchUrl(_whatsApp);
  }

  void goToEmail() {
    launchUrl(_email);
  }

  void scrollAboutMe() {
    scrollController.animateTo(
      2500,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }
}
