import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/core/helpers/constants.dart';
import 'package:notes_app/features/notes/data/model/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());


 List<NoteModel>  notes= [];

  fetchAllNotes(){
     emit(NotesLoading());

     try{
      var noteBox = Hive.box<NoteModel>(kNotesBox);
      var listNotes = noteBox.values.toList();
      notes = listNotes;
      emit(NotesSuccess(notes: listNotes));

     }
     catch(e){
      emit(NotesFailure(errMessage: e.toString()));
     }
  }
}
