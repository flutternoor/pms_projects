import 'package:flutter/material.dart';
import 'package:pms_projects/constants/constants.dart';
import 'package:pms_projects/ui/home_screen/subject_screen/biology_screen/biology_screen.dart';
import 'package:pms_projects/ui/home_screen/subject_screen/chemistry_screen/chemistry_screen.dart';
import 'package:pms_projects/ui/home_screen/subject_screen/computer_science_screen/computer_science_screen.dart';
import 'package:pms_projects/ui/home_screen/subject_screen/english_screen/english_screen.dart';
import 'package:pms_projects/ui/home_screen/subject_screen/islamyat_screen/islamyat_screen.dart';
import 'package:pms_projects/ui/home_screen/subject_screen/maths_screen/maths_screen.dart';
import 'package:pms_projects/ui/home_screen/subject_screen/physics_screen/physics_screen.dart';
import 'package:pms_projects/ui/home_screen/subject_screen/urdu_screen/urdu_screen.dart';
class SubjectScreen extends StatelessWidget {
  const SubjectScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 8,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: kAppColor,
              ),
              child: const BackButton(
                color: Colors.black,
              ),

            ),
          ),
            backgroundColor: Colors.white,
            elevation: 0,

            iconTheme: const IconThemeData(color: Colors.black,),
            title: const Center(child: Text('Subjects',style: TextStyle(color: Colors.black),))
        ),
        body: Column(
          children:  const [
            Padding(
              padding: EdgeInsets.all(12.0),
              child: TabBar(
                isScrollable: true,
                    labelColor: kAppColor,
                    indicatorColor: kAppColor,
                    unselectedLabelColor: Colors.black,
                    labelStyle: TextStyle(fontWeight: FontWeight.w600),
                  indicatorSize: TabBarIndicatorSize.label,
                  indicatorWeight: 5,
                  indicatorPadding: EdgeInsets.all(5),


                  tabs: [
                      Tab(text: "Maths"),
                      Tab(text: 'Chemistry'),
                      Tab(text: 'Biology'),
                      Tab(text: 'Physics'),
                      Tab(text: 'Computer Science'),
                      Tab(text: 'English'),
                      Tab(text: 'Urdu'),
                      Tab(text: 'Islamyat'),
                    ]),

            ),
            Expanded(
              child: TabBarView(children:
              [
                MathsScreen(),
                MathsScreen(),
                MathsScreen(),
                MathsScreen(),
                MathsScreen(),
                MathsScreen(),
                MathsScreen(),
                MathsScreen(),
                // ChemistryScreen(),
                // BiologyScreen(),
                // PhysicsScreen(),
                // ComputerScienceScreen(),
                // EnglishScreen(),
                // UrduScreen(),
                // IslamyatScreen(),




              ]),
            )

          ],
        ),
      ),
    );
  }
}
