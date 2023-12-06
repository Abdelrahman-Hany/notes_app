import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:note_app/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context){
        return const EditNoteView();
        },
        ),);
      },
      child: Container(
        padding:
            const EdgeInsets.only(top: 24, bottom: 24, right: 16, left: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color:const Color(0xffFFCC80),
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
          ListTile(
            title:const Text(
              'Flutter Tips',
              style: TextStyle(color: Colors.black, fontSize: 25),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 20),
              child: Text(
                'Build Your Career with Tharwat Samy',
                style: TextStyle(
                    color: Colors.black.withOpacity(.5), fontSize: 16),
              ),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(
                FontAwesomeIcons.trash,
                color: Colors.black,
                size: 24,
              ),
            ),
          ),
          Text(
            'May21 , 2022',
            style: TextStyle(
              color: Colors.black.withOpacity(.4),
            ),
          )
        ]),
      ),
    );
  }
}
