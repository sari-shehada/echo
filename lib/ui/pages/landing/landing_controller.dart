import 'package:bluetooth_chat/features/landing_navigation/landing_navigation_feature.dart';
import 'package:get/get.dart';

class LandingController extends GetxController {
  Future<void> onContinuePressed() async {
    //TODO: Navigate to home page

    //TODO: enable this
    // LandingNavigationFeature.instance.setFinishedLanding();
  }
}

class LandingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LandingController>(() => LandingController());
  }
}
