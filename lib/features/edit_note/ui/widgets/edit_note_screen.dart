import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notes_app/features/notes/ui/widgets/custom_app_bar.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/widgets/app_text_field.dart';

class EditNoteScreen extends StatelessWidget {
  const EditNoteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.w),
          child: Column(
            children: [
               CustomAppBar(
                title: "Note",
                icon: Icons.done,
                onTap: (){},
              ),
              verticalSpace(16),
              const AppTextField(
                hint: "Title",
              ),
              verticalSpace(16),
              const AppTextField(
                hint: "Content",
                maxLines: 5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
