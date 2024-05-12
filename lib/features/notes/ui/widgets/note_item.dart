import 'package:flutter/material.dart';
import 'package:notes_app/features/edit_note/ui/widgets/edit_note_screen.dart';
import 'package:notes_app/features/notes/data/model/note_model.dart';

class NoteItems extends StatelessWidget {
  const NoteItems({
    super.key, required this.note,
  });

  final NoteModel note  ;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const EditNoteScreen();
        }));
      },
      child: Container(
        decoration: BoxDecoration(
          color:  Color(note.color),
          borderRadius: BorderRadius.circular(16),
        ),
        padding: const EdgeInsets.only(left: 16, top: 24, bottom: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                "${note.title}",
                style: TextStyle(
                  fontSize: 26,
                  color: Colors.black,
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Text(
                  '${note.subTitle}',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black.withOpacity(.4),
                  ),
                ),
              ),
              trailing: IconButton(
                onPressed: () {
                  note.delete();
                },
                icon: const Icon(
                  Icons.delete,
                  color: Colors.black,
                  size: 30,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                '${note.date}',
                style: TextStyle(
                  color: Colors.black.withOpacity(.4),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
