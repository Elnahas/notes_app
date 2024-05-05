import 'package:flutter/material.dart';
import 'package:notes_app/core/helpers/spacing.dart';
import 'package:notes_app/core/widgets/app_text_field.dart';

import '../../../../core/widgets/app_button_text.dart';

class AddNoteButtonSheet extends StatelessWidget {
  const AddNoteButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            verticalSpace(16),
            const AppTextField(hint: "Title",),
            verticalSpace(16),
            const AppTextField(hint: "Content", maxLines: 5,),
            verticalSpace(100),
            const AppButtonText(),
            verticalSpace(16),
            ],
        ),
      ),
    );
  }
}
