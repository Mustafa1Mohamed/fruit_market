import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:fruit_market/core/constants.dart';

class CustomIndicator extends StatelessWidget {
  const CustomIndicator({super.key, @required this.dotIndex});
  final double? dotIndex;

  @override
  Widget build(BuildContext context) {
    return DotsIndicator(
      dotsCount: 3,
      position: dotIndex!,
      animate: true,

      decorator: DotsDecorator(
        color: Colors.transparent,
        activeColor: kPrimaryColor,
        // size: Size(15, 15),
        // activeSize: Size(15, 15),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: const BorderSide(color: kPrimaryColor),
        ),
      ),
    );
  }
}
