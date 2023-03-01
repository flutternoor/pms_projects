import 'package:flutter/material.dart';

import '../../../../../constants/constants.dart';
class SyllabusScreen extends StatefulWidget {
  const SyllabusScreen({Key? key}) : super(key: key);

  @override
  State<SyllabusScreen> createState() => _SyllabusScreenState();
}

class _SyllabusScreenState extends State<SyllabusScreen> {
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
                'Syllabus',
                style: TextStyle(color: Colors.black),
              ))),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text('Computer Science',style: kTextStyle,),
            SizedBox(height: 10,),
            Container(
              height: 160,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(.5),
              ),
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: Column(
                  children: [
                    DataTable(
                      headingRowColor: MaterialStateColor.resolveWith(
                              (states) => Colors.white),
                      checkboxHorizontalMargin: 0,
                      horizontalMargin: 0,
                      columnSpacing: 5,

                      headingRowHeight: 30,
                      dataRowHeight: 120,
                      border: TableBorder.all(color: Colors.blueGrey, width: 1),
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(.5),

                      ),
                      columns: const [
                        DataColumn(label: Text('S#')),
                        DataColumn(label: Text('Class')),
                        DataColumn(label: Text('Subject')),
                        DataColumn(label: Text('Type')),
                        DataColumn(label: Text('Syllabus')),
                      ],
                      rows:  [
                        DataRow(cells: [
                          DataCell(Text('1')),
                          DataCell(Text('XII')),
                          DataCell(Text('Computer Science')),
                          DataCell(Text('Second Achievement Test Syllabus',textAlign: TextAlign.justify,)),
                          DataCell(Container(
                            height: 33,
                            width: 90,
                            decoration: BoxDecoration(
                              color: const Color(0xfff06709),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: const Center(child: Text('View',style: TextStyle(fontSize: 18,color: Colors.white),),),
                          )),
                        ]),
                      ],
                    ),

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
