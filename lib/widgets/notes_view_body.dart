import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_app_bar.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children:[
        SizedBox(height: 30,),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 18,),
          child: CustomAppBar(),
        ),
      ],
    );
  }
}

