import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/features/notes/data/model/note_model.dart';
import 'package:notes_app/features/notes/logic/cubit/notes/notes_cubit.dart';
import 'package:notes_app/features/notes/ui/widgets/note_item.dart';

class NotesListView extends StatelessWidget {

  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {

    List<NoteModel> noteModel = BlocProvider.of<NotesCubit>(context).notes ;

    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: ListView.builder(
            itemCount: state is NotesSuccess ? state.notes.length : 0,
            itemBuilder: (context, position) {
              return Padding(
                  padding: EdgeInsets.symmetric(vertical: 8),
                  child: NoteItems(
                      note:noteModel[position] ));
            },
          ),
        );
      },
    );
  }
}
