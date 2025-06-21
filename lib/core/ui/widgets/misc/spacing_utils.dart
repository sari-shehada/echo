import 'package:flutter/material.dart';

class AddVerticalSpacing extends StatelessWidget {
  const AddVerticalSpacing(this.value, {super.key});

  final double value;

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: value);
  }
}

class AddHorizontalSpacing extends StatelessWidget {
  const AddHorizontalSpacing(this.value, {super.key});

  final double value;

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: value);
  }
}
