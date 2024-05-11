part of 'notes_cubit.dart';

@immutable
sealed class NotesState {}

final class NotesInitial extends NotesState {}
final class NotesLoading extends NotesState {}

final class NotesSuccess<T> extends NotesState {
  final List<T> notes ;

  NotesSuccess({required this.notes});

}

final class NotesFailure extends NotesState {
  final String errMessage;

  NotesFailure({required this.errMessage});

}
