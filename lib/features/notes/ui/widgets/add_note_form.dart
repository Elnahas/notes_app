import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/features/notes/data/model/note_model.dart';
import 'package:notes_app/features/notes/logic/cubit/add_note_cubit.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/widgets/app_button_text.dart';
import '../../../../core/widgets/app_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKye = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKye,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          verticalSpace(16),
          AppTextField(
            hint: "Title",
            onSaved: (value) {
              title = value;
            },
          ),
          verticalSpace(16),
          AppTextField(
            hint: "Content",
            maxLines: 5,
            onSaved: (value) {
              subTitle = value;
            },
          ),
          verticalSpace(100),
          BlocBuilder<AddNoteCubit,AddNoteState>(
            builder: (context, state) {
              return AppButtonText(
                isLoading: state is AddNoteLoading ? true : false,
                onPressed: () {
                  if (formKye.currentState!.validate()) {
                    formKye.currentState!.save();

                    var noteModel = NoteModel(
                        title: title!,
                        subTitle: subTitle!,
                        date: DateTime.now().toString(),
                        color: Colors.blueGrey.value);

                    BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                  }
                  setState(() {});
                },
              );
            },
          ),
          verticalSpace(16),
        ],
      ),
    );
  }
}
