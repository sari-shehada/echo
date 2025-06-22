import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class LoaderWidget extends StatelessWidget {
  const LoaderWidget({super.key, this.color, this.size});

  final Color? color;
  final double? size;
  @override
  Widget build(BuildContext context) {
    return LoadingAnimationWidget.staggeredDotsWave(
      color: color ?? Theme.of(context).colorScheme.primary,
      size: size ?? 80,
    );
  }
}
