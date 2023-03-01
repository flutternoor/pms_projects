import 'package:flutter/material.dart';

import '../constants/constants.dart';
class CustomAssignmentScreenContainer extends StatelessWidget {
  const CustomAssignmentScreenContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Container(
        padding: EdgeInsets.all(5),
        height: 220,
        decoration:BoxDecoration(
          borderRadius:  BorderRadius.circular(10),
          color: Colors.green.withOpacity(.2),
        ),
        child: Padding(
          padding: const EdgeInsets.all(6.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    height: 25,
                    width: 60,
                    decoration: BoxDecoration(
                      color: kAppColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(
                        child: Text(
                          'S.No :',
                        )),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Container(
                    height: 25,
                    width: 80,
                    decoration: BoxDecoration(
                      color: kGreenColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(
                        child: Text(
                          'Subject',
                        )),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Container(
                    height: 25,
                    width: 80,
                    decoration: BoxDecoration(
                      color: kGreenColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(
                        child: Text(
                          'Subject',
                        )),
                  ),
                ],
              ),
              SizedBox(height: 20,),

              Text('Title',style: TextStyle(fontSize: 15,),),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Assignment No.1 ',style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold),textAlign: TextAlign.justify),
                  Container(
                    height: 35,
                    width: 110,
                    decoration: BoxDecoration(
                      color: const Color(0xfff06709),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: const Center(child: Text('Download',style: TextStyle(fontSize: 18,color: Colors.white),),),
                  )
                ],
              ),
              SizedBox(height: 20,),

              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:  [
                  Column(
                    children: [
                      Text(
                        'Deadline Date: ',
                        style: TextStyle(fontSize: 12),
                      ),
                      Text(
                        '27-Jan-2023',
                        style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        'Submitted Date',
                        style: TextStyle(fontSize: 12,),
                      ),
                      Text(
                        '27-Jan-2023',
                        style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),


                  Container(
                    height: 35,
                    width: 110,
                    decoration: BoxDecoration(
                      color: const Color(0xfff06709),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: const Center(child: Text('Upload',style: TextStyle(fontSize: 18,color: Colors.white),),),
                  )

                ],
              )

            ],
          ),
        )
        ,
      ),
    );
  }
}
