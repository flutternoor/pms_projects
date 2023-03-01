import 'package:flutter/material.dart';
import 'package:pms_projects/ui/home_screen/subject_screen/maths_screen/video_lecture_screen/upload_video%20_lecture/upload_video_lecture.dart';
import 'package:pms_projects/ui/home_screen/subject_screen/maths_screen/video_lecture_screen/view_video_screen.dart';
import 'package:pms_projects/widgets/custom_videos_container.dart';
import 'package:pms_projects/widgets/signin_login_btn_widget.dart';

import '../../../../../constants/constants.dart';


class videoLectureScreen extends StatefulWidget {
  const videoLectureScreen({Key? key}) : super(key: key);

  @override
  State<videoLectureScreen> createState() => _videoLectureScreenState();
}

class _videoLectureScreenState extends State<videoLectureScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: kAppColor,
              ),
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Padding(
                  padding: const EdgeInsets.only(left: 3.0),
                  child: Icon(
                    Icons.arrow_back_ios,
                    size: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          iconTheme: const IconThemeData(
            color: Colors.black,
          ),
          title: const Center(
              child: Text(
            'Video Lectures',
            style: TextStyle(color: Colors.black),
          ))),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 18.0,right: 20,top: 5,bottom: 5),
                child: signIn_login_Btn_widget(onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>UploadVideoLecture()));
                }, containerText: 'Add New Lectures'),
              ),
               ///Only this container to go to next screen
              CustomVideosConatiner(
                containerColor: kLightPinkColor, onTap: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>ViewVideoScreen()));
              },
              ),
              SizedBox(
                height: 15,
              ),
              CustomVideosConatiner(
                containerColor: kLightBlueColor, onTap: () {  },
              ),
              SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 15,
              ),
              CustomVideosConatiner(
                containerColor: kLightCreemColor, onTap: () {  },
              ),
              SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 15,
              ),
              CustomVideosConatiner(
                containerColor: kLightPinkColor, onTap: () {  },
              ),
              SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
