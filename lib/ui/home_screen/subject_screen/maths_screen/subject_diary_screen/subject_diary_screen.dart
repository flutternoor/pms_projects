import 'package:flutter/material.dart';

import '../../../../../constants/constants.dart';

class SubjectDiaryScreen extends StatefulWidget {
  const SubjectDiaryScreen({Key? key}) : super(key: key);

  @override
  State<SubjectDiaryScreen> createState() => _SubjectDiaryScreenState();
}

class _SubjectDiaryScreenState extends State<SubjectDiaryScreen> {
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
            'Subject Diary',
            style: TextStyle(color: Colors.black),
          ))),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text('Computer Science',style: kTextStyle,),
            SizedBox(height: 10,),
            Container(
              height: 220,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.green.withOpacity(.1),
              ),
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: Column(
                  children: [
                    DataTable(
                      headingRowColor: MaterialStateColor.resolveWith(
                          (states) => Colors.orangeAccent),
                      headingRowHeight: 30,
                      dataRowHeight: 120,
                      border: TableBorder.all(color: Colors.blueGrey, width: 1),
                      decoration: BoxDecoration(
                        color: Colors.green.withOpacity(.1),
                      ),
                      columns: const [
                        DataColumn(label: Text('WeekNo')),
                        DataColumn(label: Text('Chapter')),
                        DataColumn(label: Text('Topic')),
                        DataColumn(label: Text('Details')),
                      ],
                      rows: const [
                        DataRow(cells: [
                          DataCell(Text('1')),
                          DataCell(Text('1')),
                          DataCell(Text('Operating System')),
                          DataCell(Text(
                              'Operating System Functions & Process Management')),
                        ]),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(

                          children: [
                            Text("Delivered Date",style: TextStyle(fontSize: 13,),),
                            SizedBox(width: 5,),
                            Text("2022/09/16",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                          ],
                        ),
                        Row(

                          children: [
                            Text("Status:",style: TextStyle(fontSize: 13,),),
                            SizedBox(width: 5,),
                            Text("Completed",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
