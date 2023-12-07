import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_app_bar.dart';
import 'package:note_app/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(children: [
        SizedBox(
          height: 35,
        ),
        CustomAppBar(
          title: 'Edit Note',
          icon: Icons.check,
        ),
           SizedBox(
          height: 35,
        ),
        CustomTextField(hint: 'text',),

        SizedBox(height: 16,),

        CustomTextField(hint: 'content',maxlines: 5,),
      ]),
    );
  }
}
