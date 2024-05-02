import 'package:flutter/material.dart';
import 'package:notes_app/core/theming/styles.dart';
import 'package:notes_app/features/notes/ui/widgets/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Notes" , style: TextStyles.font24WhiteBold,),
        Spacer(),
        CustomSearchIcon(),
      ],
    );
  }
}