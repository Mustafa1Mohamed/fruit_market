import 'package:flutter/material.dart';
import 'package:fruit_market/core/constants.dart';
import 'package:fruit_market/core/utils/size_config.dart';

class CustomGeneralButton extends StatelessWidget {
  const CustomGeneralButton({super.key, required this.txt, this.onTap});
  final String txt;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: SizeConfig.screenHeight,
        height: 50,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            txt,
            style: const TextStyle(
              color: Color(0xffffffff),
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
