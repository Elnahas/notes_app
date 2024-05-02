import 'package:flutter/material.dart';

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp( 
      title: "Note App",
       theme: ThemeData(primaryColor: Colors.amber,
        scaffoldBackgroundColor: Colors.white),

    );
  }
}