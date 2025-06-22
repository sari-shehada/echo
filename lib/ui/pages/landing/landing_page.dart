import 'package:bluetooth_chat/config/constants/string_constants.dart';
import 'package:bluetooth_chat/core/ui/widgets/buttons/call_to_action_button.dart';
import 'package:bluetooth_chat/ui/pages/landing/landing_controller.dart';
import 'package:bluetooth_chat/ui/widgets/app_icon_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

class LandingPage extends GetView<LandingController> {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final ColorScheme colorScheme = theme.colorScheme;
    return Scaffold(
      body: SizedBox.expand(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              AppIconWidget(dimension: MediaQuery.sizeOf(context).width * 0.5),
              Text(
                'Welcome to',
                style: TextStyle(
                  color: colorScheme.primaryFixedDim,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                kAppName,
                style: TextStyle(
                  color: colorScheme.primary,
                  fontSize: 55,
                  fontWeight: FontWeight.w300,
                ),
              ),
              Spacer(),
              Text(
                'Echo is a lightweight chat app that connects nearby devices using Bluetooth. No Wi-Fi. No data. Just instant, offline messaging—anytime, anywhere.',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.center,
              ),
              Spacer(),
              CallToActionButton(onTap: controller.onContinuePressed),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
