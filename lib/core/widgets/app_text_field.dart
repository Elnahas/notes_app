import 'package:flutter/material.dart';
import 'package:notes_app/core/theming/color.dart';

class AppTextField extends StatelessWidget {
  final String hint;
  final int maxLines;
  final void Function(String?)? onSaved;

  const AppTextField(
      {super.key, required this.hint, this.maxLines = 1, this.onSaved});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return "Field is required";
        } else {
          return null;
        }
      },
      cursorColor: ColorsManager.mainBlue,
      maxLines: maxLines,
      decoration: InputDecoration(
          hintText: hint,
          hintStyle: TextStyle(color: ColorsManager.gray),
          border: buildBorder(),
          enabledBorder: buildBorder(),
          focusedBorder: buildBorder(ColorsManager.mainBlue)),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: color ?? Colors.white));
  }
}
