import 'package:flutter/material.dart';

import '../../../../../constants/constants.dart';
import '../../../../../widgets/CustomAssignmentScreenContainer.dart';
class AssignmentScreen extends StatelessWidget {
  const AssignmentScreen({Key? key}) : super(key: key);

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
                'Assignment',
                style: TextStyle(color: Colors.black),
              ))),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
          CustomAssignmentScreenContainer(),

          ],
        ),
      ),
    );
  }
}

