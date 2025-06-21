import 'package:get/get.dart';

class LoaderController extends GetxController {}

class LoaderBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<LoaderController>(LoaderController());
  }
}
