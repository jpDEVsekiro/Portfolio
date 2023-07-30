import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeController extends GetxController {
  ScrollController scrollController = ScrollController();
  final Uri _gitHub = Uri.parse('https://github.com/jpDEVsekiro');
  final Uri _linkedin =
      Uri.parse('https://www.linkedin.com/in/jo%C3%A3o-pedro--/');

  void goToGitHub() {
    launchUrl(_gitHub);
  }

  void goToLinkedIn() {
    launchUrl(_linkedin);
  }
}
