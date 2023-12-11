import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app/cubits/add_note_cubit/add_note_state.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/models/note_model.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  addNote(NoteModel note) async {
    emit(AddNoteLoading());
    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);
      await notesBox.add(note);
      emit(AddNoteSuccess());
    }catch (e) {
    emit(AddNoteFailure(errorMessage: e.toString(),),);
    }
  }
}

// add<T>(T name) {//genaric fanction is used to when calling the function you spcify the type of the data the function takes
//   return name;
// }
