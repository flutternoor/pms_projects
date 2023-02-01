import 'package:flutter/material.dart';

import '../../../constants/constants.dart';
import '../../../widgets/zoom_lectures_container_widget.dart';
class ZoomLecturesScreen extends StatelessWidget {
  const ZoomLecturesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          iconTheme: const IconThemeData(color: Colors.black),
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(
                  Icons.menu_outlined,
                ),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              );
            },
          ),
         title:const Center(child:  Text('Zoom Lectures',style:  TextStyle(color: Colors.black),)),

          actions: [
            Image.asset('assets/images/title_img.png'),
          ],

        ),
        drawer: const Drawer(
          backgroundColor: Colors.orange,
        ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            children: const[
              ZoomLecturesContainerWidget(subjectName: 'Process,Multi Programming & \nMulti threading', containerColor: kLightBlueColor,),
              ZoomLecturesContainerWidget(subjectName: 'Functions of Operating System\n', containerColor: kAppColor,),
              ZoomLecturesContainerWidget(subjectName: 'Process,Multi Programming & \nMulti threading', containerColor: kPinkColor,),
              ZoomLecturesContainerWidget(subjectName: 'Functions of Operating System', containerColor: kGreenColor,),
              ZoomLecturesContainerWidget(subjectName: 'Process,Multi Programming & \nMulti threading', containerColor: kLightBlueColor,),

            ],
          ),
        ),
      ),
    );
  }
}

