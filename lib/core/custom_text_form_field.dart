import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    this.textInputType,
    this.onChanged,
    this.onSaved,
    this.maxLines,
  });

  final TextInputType? textInputType;
  final ValueSetter? onChanged;
  final ValueSetter? onSaved;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: textInputType,
      onChanged: onChanged,
      onSaved: onSaved,
      maxLines: maxLines,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: Color(0xFFCCCCCC)),
        ),
        filled: true,
        fillColor: Colors.transparent,
      ),
    );
  }
}
