import 'package:carousel_slider/carousel_controller.dart';
import 'package:get/get.dart';
import '../view/main_navigation_view.dart';

class MainNavigationController extends GetxController {
  MainNavigationView? view;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  // CAROUSEL
  int currentIndex = 0;
  final CarouselSliderController carouselController =
      CarouselSliderController();
}
