import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notes_app/core/helpers/spacing.dart';
import 'package:notes_app/core/theming/styles.dart';
import 'package:notes_app/features/notes/ui/widgets/custom_app_bar.dart';
import 'package:notes_app/features/notes/ui/widgets/note_item.dart';
import 'package:notes_app/features/notes/ui/widgets/notes_list_view.dart';

class NotesScreen extends StatelessWidget {
  const NotesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton:
          FloatingActionButton(onPressed: () {}, child: Icon(Icons.add)),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.w),
          child: Column(
            children: [
              const CustomAppBar(),
              verticalSpace(15),
              Expanded(
                child: NotesListView(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
