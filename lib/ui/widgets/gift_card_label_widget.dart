import 'package:flutter/material.dart';

class GiftCardLabelWidget extends StatelessWidget {
  const GiftCardLabelWidget({Key? key, required this.label}) : super(key: key);

  final String label;

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: const TextStyle(
        fontSize: 6,
        fontWeight: FontWeight.w900,
        fontStyle: FontStyle.normal,
        // height: 5,
        fontFamily: 'Lato'
      ),
    );
  }
}
