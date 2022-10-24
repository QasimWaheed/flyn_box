import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flyn_box/styles/app_colors.dart';

class GiftCardWidget extends StatelessWidget {
  const GiftCardWidget({Key? key, required this.path, required this.linearGradient}) : super(key: key);
  final String path;
  final LinearGradient linearGradient;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 30,
      padding: const EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(path,)),
        borderRadius: BorderRadius.circular(4.0),
        border: Border.all(
          color: AppColors.greyColor,
          width: 0.5,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            offset: const Offset(0, 0),
            blurRadius: 4,
            spreadRadius: 0,
          ),
        ],
        gradient: linearGradient,
      ),
    );
  }
}
