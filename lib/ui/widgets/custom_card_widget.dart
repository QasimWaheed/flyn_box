import 'package:flutter/material.dart';

import '../../styles/app_colors.dart';

class CustomCardWidget extends StatelessWidget {
  const CustomCardWidget({
    Key? key,
    required this.child,
    this.width,
    this.height,
    this.color,
  }) : super(key: key);

  final double? height;
  final double? width;
  final Widget child;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: color ?? AppColors.grey,
        borderRadius: BorderRadius.circular(10),
      ),
      child: child,
    );
  }
}
