import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/core/helpers/constants.dart';
import 'package:notes_app/core/helpers/simple_bloc_observer.dart';
import 'package:notes_app/features/notes/data/model/note_model.dart';
import 'package:notes_app/note_app.dart';

void main() async {
  
  Bloc.observer = SimpleBlocObserver();

  await Hive.initFlutter();
  await Hive.openBox<NoteModel>(kNotesBox);
  Hive.registerAdapter<NoteModel>(NoteModelAdapter());
  runApp(const NoteApp());
}
