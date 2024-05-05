import 'package:flutter/material.dart';
import 'package:notes_app/core/theming/color.dart';

class AppTextField extends StatelessWidget {

  final String hint ;
  final int maxLines ;

  const AppTextField({super.key, required this.hint, this.maxLines = 1});

  @override
  Widget build(BuildContext context) {
    return  TextField(
      cursorColor: ColorsManager.mainBlue,
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hint,
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