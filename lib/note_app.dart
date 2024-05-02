import 'package:flutter/material.dart';
import 'package:notes_app/features/home/ui/widgets/home_screen.dart';

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp( 
      title: "Note App",
       theme: ThemeData.light(),
       home:const HomeScreen(),
    );
  }
}