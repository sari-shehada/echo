import 'package:flutter/material.dart';

class AppIconWidget extends StatelessWidget {
  const AppIconWidget({super.key, this.dimension});

  final double? dimension;

  @override
  Widget build(BuildContext context) {
    return SizedBox.square(
      dimension: dimension,
      child: Image.asset('assets/images/app_icon.png'),
    );
  }
}
