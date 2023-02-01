import 'package:flutter/material.dart';
import 'package:pms_projects/constants/constants.dart';

import '../../widgets/profile_screen_row_widget.dart';
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: kLightBlackColor,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Center(child: Text('My Profile ',style: TextStyle(color: Colors.white),)),
      actions: const [
        Icon(Icons.more_vert_outlined)
      ],
      ),
      drawer: const Drawer(
        backgroundColor: Colors.orange,

      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: kLightBlackColor,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25),bottomRight: Radius.circular(25))
              ),
              child: Column(
                children: [
                  const SizedBox(height: 15,),
                  Image.asset('assets/images/profile_img.png'),
                  const SizedBox(height: 10,),
                  const Text('MUHAMMAD HUZAIFA',style: const TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 18),),
                  const SizedBox(height: 5,),

                  Row(
                     crossAxisAlignment: CrossAxisAlignment.center,
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: const [
                       Text('Father Name:',style: TextStyle(color: Colors.white,fontSize: 15),),
                       SizedBox(width: 5,),
                       Text('Umar Khan',style: TextStyle(color: Colors.white,fontSize: 15),),
                     ],
                   ),
                  const SizedBox(height: 30,),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 35.0),
              child: Divider(thickness: 1,color: kLightBlackColor,),
            ),
            const ProfileScreenRowWidget(text1: 'Form No.',value1: '01-21-0849',text2: 'Student ID',value2: '01-21-13713-B',),
            const ProfileScreenRowWidget(text1: 'DOB',value1: '11-Mar-2006',text2: 'Admission Date',value2: '13-Oct-2021',),
            const ProfileScreenRowWidget(text1: 'Program',value1: 'Computer Science',text2: 'Session',value2: '2021-2023',),
            const ProfileScreenRowWidget(text1: 'Class',value1: 'XII',text2: 'Section',value2: 'P',),
            const ProfileScreenRowWidget(text1: 'Status',value1: 'Active',text2: 'Scholership',value2: 'Null',),
            const ProfileScreenRowWidget(text1: 'Transport',value1: 'No',text2: 'Bus ID',value2: 'Null',),







          ],
        ),
      )
    );
  }
}


