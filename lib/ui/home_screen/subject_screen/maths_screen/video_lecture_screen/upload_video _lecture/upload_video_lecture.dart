import 'package:flutter/material.dart';

import '../../../../../../constants/constants.dart';
import '../../../../../../widgets/CustomTextField.dart';
import '../../../../../../widgets/signin_login_btn_widget.dart';
import '../../../../../auth/login_screen/login_screen.dart';
class UploadVideoLecture extends StatefulWidget {
  const UploadVideoLecture({Key? key}) : super(key: key);

  @override
  State<UploadVideoLecture> createState() => _UploadVideoLectureState();
}

class _UploadVideoLectureState extends State<UploadVideoLecture> {
  TextEditingController chapterNameController = TextEditingController();
  TextEditingController chapterNoController = TextEditingController();
  TextEditingController topicNoController = TextEditingController();
  final item = ['item1', 'item2', 'item3'];
  String? value;

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
                'Upload Video Lectures',
                style: TextStyle(color: Colors.black),
              ))),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Chapter Name',style: TextStyle(fontSize: 18),),
              SizedBox(height: 5,),
              CustomTextField(chapterNameController: chapterNameController),
              SizedBox(height: 10,),
              Text('Chapter No',style: TextStyle(fontSize: 18),),
              SizedBox(height: 5,),
              CustomTextField(chapterNameController: chapterNoController),
              SizedBox(height: 10,),
              Text('Topic No',style: TextStyle(fontSize: 18),),
              SizedBox(height: 5,),
              CustomTextField(chapterNameController: topicNoController),
              SizedBox(height: 10,),
              Text('Program',style: TextStyle(fontSize: 18),),
              SizedBox(height: 5,),
              ///DropDownButton
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                decoration: const BoxDecoration(
                  color: kTextFieldColor,
                ),
                child: DropdownButton<String>(
                  elevation: 0,
                  underline: Container(),
                  value: value,
                  hint: const Text('Select Program'),
                  isExpanded: true,
                  iconSize: 30,
                  icon: const Icon(Icons.keyboard_arrow_down_rounded,),
                  items: item.map(buildMenuItem).toList(),
                  onChanged: (value) {
                    setState(() {
                      this.value = value;
                    });
                  },
                ),

              ),
              SizedBox(height: 10,),
              Text('Section',style: TextStyle(fontSize: 18),),
              SizedBox(height: 5,),
              ///DropDownButton
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                decoration: const BoxDecoration(
                  color: kTextFieldColor,
                ),
                child: DropdownButton<String>(
                  elevation: 0,
                  underline: Container(),
                  value: value,
                  hint: const Text('Select Section'),
                  isExpanded: true,
                  iconSize: 30,
                  icon: const Icon(Icons.keyboard_arrow_down_rounded,),
                  items: item.map(buildMenuItem).toList(),
                  onChanged: (value) {
                    setState(() {
                      this.value = value;
                    });
                  },
                ),

              ),
              SizedBox(height: 10,),
              Text('Select Video File',style: TextStyle(fontSize: 18),),
              SizedBox(height: 5,),
              ///DropDownButton
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                decoration: const BoxDecoration(
                  color: kTextFieldColor,
                ),
                child: DropdownButton<String>(
                  elevation: 0,
                  underline: Container(),
                  value: value,
                  hint: const Text('Select Video'),
                  isExpanded: true,
                  iconSize: 30,
                  icon: const Icon(Icons.keyboard_arrow_down_rounded,),
                  items: item.map(buildMenuItem).toList(),
                  onChanged: (value) {
                    setState(() {
                      this.value = value;
                    });
                  },
                ),

              ),
              SizedBox(height: 20,),

              Padding(
                padding: const EdgeInsets.only(left: 18.0,right: 20,top: 5,bottom: 5),
                child: signIn_login_Btn_widget(onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>UploadVideoLecture()));
                }, containerText: 'Upload'),
              ),
            ],
          ),
        ),
      ),

    );
  }
}

