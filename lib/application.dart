import 'package:bluetooth_chat/config/themes/light_theme.dart';
import 'package:bluetooth_chat/ui/pages/loader/loader_controller.dart';
import 'package:bluetooth_chat/ui/pages/loader/loader_page.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: LoaderPage(),
      initialBinding: LoaderBinding(),
      theme: lightTheme,
    );
  }
}
