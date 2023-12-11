import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/cubits/notes_cubit/notes_state.dart';
import 'package:note_app/models/note_model.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  fetchAllNotes() async{

    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);
      emit(NotesSuccess(notesBox.values.toList(),),);
    }catch (e) {
    emit(NotesFailure(errorMessage: e.toString(),),);
    }
  }
}
