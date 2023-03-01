import 'package:flutter/material.dart';
import 'package:pms_projects/ui/home_screen/subject_screen/maths_screen/assignment_screen/assignment_screen.dart';
import 'package:pms_projects/ui/home_screen/subject_screen/maths_screen/subject_diary_screen/subject_diary_screen.dart';
import 'package:pms_projects/ui/home_screen/subject_screen/maths_screen/subject_notes_screen/subject_notes_screen.dart';
import 'package:pms_projects/ui/home_screen/subject_screen/maths_screen/video_lecture_screen/video_lecture_screen.dart';

import '../../../../constants/constants.dart';
import '../../../../widgets/subject_details_screen_widget.dart';
class MathsScreen extends StatelessWidget {
  const MathsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SubjectSetailsScreenWidget(
          containerColor: kAppColor.withOpacity(.2),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>videoLectureScreen()));

          },
          containerIcon: Icons.play_circle_fill_outlined,
          titleText: 'Videos Lectures', iconColor: kAppColor,),
            SubjectSetailsScreenWidget(containerColor: kBlueColor.withOpacity(.2),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>SubjectNotesScreen(

                )));

              },
              containerIcon: Icons.note_outlined,
              titleText: 'Subject Notes', iconColor: kBlueColor,),
            SubjectSetailsScreenWidget(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>AssignmentScreen()));

                    },
              containerColor: kPinkColor.withOpacity(.2),
              containerIcon: Icons.edit_outlined,
              iconColor: kPinkColor,
              titleText: 'Assignments',

            ),
            SubjectSetailsScreenWidget(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>SubjectDiaryScreen()));

              },
              containerColor: kGreenColor.withOpacity(.2),
              containerIcon: Icons.library_books_outlined,
              iconColor: kGreenColor,
              titleText: 'Subject Diary',
            ),
            SubjectSetailsScreenWidget(
              onTap: () {  },
              containerColor: Colors.blue.withOpacity(.2),
              containerIcon: Icons.question_mark_outlined,
              iconColor: Colors.blue,
              titleText: 'MCQs',
            ),
            SubjectSetailsScreenWidget(
              onTap: () {  },
              containerColor: Colors.purple.withOpacity(.2),
              containerIcon: Icons.sticky_note_2,
              iconColor: Colors.purple,
              titleText: 'Syllabus',
            ),
            SubjectSetailsScreenWidget(
              onTap: () {  },
              containerColor: Colors.red.withOpacity(.2),
              containerIcon: Icons.file_copy_rounded,
              iconColor: Colors.red,
              titleText: 'Model Paper',
            ),
          ],
        ),
      )
    );
  }
}

