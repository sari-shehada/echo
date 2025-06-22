import 'package:bluetooth_chat/config/constants/string_constants.dart';
import 'package:bluetooth_chat/core/ui/widgets/loaders/loader_widget.dart';
import 'package:bluetooth_chat/core/ui/widgets/misc/spacing_utils.dart';
import 'package:bluetooth_chat/ui/pages/loader/loader_controller.dart';
import 'package:bluetooth_chat/ui/widgets/app_icon_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoaderPage extends GetView<LoaderController> {
  const LoaderPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.sizeOf(context);
    final double width = screenSize.width;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            AppIconWidget(dimension: width * 0.5),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                LoaderWidget(
                  size: 30,
                  color: Theme.of(context).colorScheme.onSurface,
                ),
                AddVerticalSpacing(20),
                Text(
                  kAppName,
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w500,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
