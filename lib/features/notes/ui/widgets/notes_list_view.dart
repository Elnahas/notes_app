import 'package:flutter/material.dart';
import 'package:notes_app/features/notes/ui/widgets/note_item.dart';

class NotesListView extends StatelessWidget {

  final  data =  const [];

  const NotesListView({super.key});


  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, position) {
                    return Padding(padding: EdgeInsets.symmetric(vertical: 8), child: NoteItems());
                  },
                );
  }
}