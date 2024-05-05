import 'package:flutter/material.dart';
import 'package:notes_app/core/helpers/spacing.dart';
import 'package:notes_app/core/widgets/app_text_field.dart';

class AddNoteButtonSheet extends StatelessWidget {
  const AddNoteButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          verticalSpace(16),
          AppTextField()
          ],
      ),
    );
  }
}
