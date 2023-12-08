import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/add_note_cubit/add_note_state.dart';

class NotesCubit extends Cubit<AddNoteState> {
  NotesCubit() : super(AddNoteInitial());
}
