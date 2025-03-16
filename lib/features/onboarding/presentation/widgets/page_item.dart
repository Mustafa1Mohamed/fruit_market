import 'package:flutter/cupertino.dart';
import 'package:fruit_market/core/utils/size_config.dart';

class PageItem extends StatelessWidget {
  const PageItem({super.key, this.image, this.txt1, this.txt2});
  final String? image, txt1, txt2;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: SizeConfig.defaultSize! * 15),
        SizedBox(
          height: SizeConfig.defaultSize! * 20,
          child: Image.asset(image!),
        ),
        SizedBox(height: SizeConfig.defaultSize! * 5),

        Text(
          txt1!,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        SizedBox(height: SizeConfig.defaultSize! * 2.5),
        Text(
          txt2!,
          style: const TextStyle(
            fontSize: 14,
            color: Color(0xffCFCFCF),
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
