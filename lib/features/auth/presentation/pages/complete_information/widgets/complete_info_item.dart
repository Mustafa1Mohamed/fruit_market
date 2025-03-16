import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fruit_market/core/custom_text_form_field.dart';
import 'package:fruit_market/core/utils/size_config.dart';

class CompleteInfoItem extends StatelessWidget {
  const CompleteInfoItem({
    super.key,
    this.onChanged,
    this.onSaved,
    this.maxLines,
    required this.txt,
    this.textInputType,
  });
  final ValueSetter? onChanged;
  final ValueSetter? onSaved;
  final int? maxLines;
  final String txt;
  final TextInputType? textInputType;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              txt,
              style: const TextStyle(
                fontFamily: 'Poppins',
                fontSize: 16,
                color: Color(0xff0c0b0b),
                fontWeight: FontWeight.w600,
                height: 1.5625,
              ),
              textHeightBehavior: const TextHeightBehavior(
                applyHeightToFirstAscent: false,
              ),
              textAlign: TextAlign.start,
            ),
          ],
        ),
        SizedBox(height: SizeConfig.defaultSize),
        CustomTextFormField(
          textInputType: textInputType,
          onChanged: onChanged,
          onSaved: onSaved,
          maxLines: maxLines,
        ),
      ],
    );
  }
}
