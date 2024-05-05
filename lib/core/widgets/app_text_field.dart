import 'package:flutter/material.dart';
import 'package:notes_app/core/theming/color.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return  TextField(
      cursorColor: ColorsManager.mainBlue,
      decoration: InputDecoration(
        hintText: "Title",
        hintStyle: TextStyle(color: ColorsManager.gray),
        
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(ColorsManager.mainBlue)
      ),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: color ?? Colors.white)
      );
  }
}