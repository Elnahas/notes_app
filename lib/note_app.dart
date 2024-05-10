import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notes_app/features/notes/logic/cubit/add_note_cubit.dart';
import 'package:notes_app/features/notes/ui/widgets/home_screen.dart';

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Note App",
        theme: ThemeData.dark(),
        home: const NotesScreen(),
      ),
    );
  }
}
