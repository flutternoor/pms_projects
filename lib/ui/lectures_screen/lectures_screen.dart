import 'package:flutter/material.dart';

import '../../widgets/lectures_screen_list_tile_widget.dart';

class LecturesScreen extends StatelessWidget {
  const LecturesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Center(child: Text('Lectures ',style: TextStyle(color: Colors.black),)),),
      drawer: const Drawer(
        backgroundColor: Colors.orange,

      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 10),
          child: Column(
            children: const [
              LecturesScreenListTile(subjectName: 'Computer Science',videosText: '2 videos',),
              SizedBox(height: 5,),
              LecturesScreenListTile(subjectName: 'Physice',videosText: '5 videos',),
              SizedBox(height: 5,),
              LecturesScreenListTile(subjectName: 'Biology',videosText: '8 videos',),
              SizedBox(height: 5,),
              LecturesScreenListTile(subjectName: 'Chemistry',videosText: '2 videos',),
              SizedBox(height: 5,),
              LecturesScreenListTile(subjectName: 'Maths',videosText: '7 videos',),
              SizedBox(height: 5,),
              LecturesScreenListTile(subjectName: 'English',videosText: '3 videos',),
              SizedBox(height: 5,),
              LecturesScreenListTile(subjectName: 'Urdu',videosText: '1 videos',),
              SizedBox(height: 5,),
              LecturesScreenListTile(subjectName: 'Islamyat',videosText: '6 videos',),
              SizedBox(height: 5,),
              LecturesScreenListTile(subjectName: 'Pak Studies',videosText: '3 videos',),
              SizedBox(height: 5,),
            ],
          ),
        ),
      )
    );
  }
}

