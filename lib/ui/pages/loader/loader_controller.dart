import 'package:bluetooth_chat/features/landing_navigation/landing_navigation_feature.dart';
import 'package:get/get.dart';
import 'package:shared_preferences_service/shared_preferences_service.dart';

class LoaderController extends GetxController {
  @override
  void onReady() {
    _loadApp();
    super.onReady();
  }

  void _loadApp() async {
    //TODO: Change to wait only if loading time is less than 1 second
    Future.delayed(const Duration(seconds: 1));
    await SharedPreferencesService.init();
    LandingNavigationFeature.init();
    _navigateUser();
  }

  void _navigateUser() {
    if (LandingNavigationFeature.instance.shouldNavigateToLanding) {
      //TODO: Navigate to landing page
      return;
    }
    //TODO: Navigate to home page
  }
}

class LoaderBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<LoaderController>(LoaderController());
  }
}
