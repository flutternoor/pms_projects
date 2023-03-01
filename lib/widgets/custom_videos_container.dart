import 'package:flutter/material.dart';

class CustomVideosConatiner extends StatefulWidget {

  final Color containerColor;
   VoidCallback onTap;



  CustomVideosConatiner({Key? key, required this.containerColor,
  required this.onTap}) : super(key: key);

  @override
  State<CustomVideosConatiner> createState() => _CustomVideosConatinerState();
}

class _CustomVideosConatinerState extends State<CustomVideosConatiner> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Container(
        padding: EdgeInsets.all(5),
        height: 220,
        decoration:BoxDecoration(
          borderRadius:  BorderRadius.circular(10),
          color: widget.containerColor,
        ),
        child: Padding(
          padding: const EdgeInsets.all(6.0),
          child: Column(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: const [
                      Text('Chapter Name:',style: TextStyle(color: Colors.white,fontSize: 14),),
                      SizedBox(width: 10,),
                      Text('Operating System',style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold
                      ),)

                    ],
                  ),
                  Row(
                    children: const [
                      Text('Chapter No:',style: TextStyle(color: Colors.white,fontSize: 14),),
                      SizedBox(width: 10,),
                      Text('1',style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold
                      ),)

                    ],
                  ),

                ],
              ),

              Text('Topic',style: TextStyle(color: Colors.white,fontSize: 15,),),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Multiprogramming And\nMultiProcessing ',style: TextStyle(color: Colors.white,fontSize: 21,fontWeight: FontWeight.bold),textAlign: TextAlign.justify),
                  Container(
                    height: 35,
                    width: 100,
                    decoration: BoxDecoration(
                      color: const Color(0xfff06709),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: const Center(child: Text('View',style: TextStyle(fontSize: 18,color: Colors.white),),),
                  )
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Teacher:',
                    style: TextStyle(fontSize: 11,color: Colors.white),
                  ),
                  Text(
                    'Muhammad Ishaq',
                    style: TextStyle(fontSize: 13,color: Colors.white,fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Date:',
                    style: TextStyle(fontSize: 11,color: Colors.white),
                  ),
                  Text(
                    '27-Jan-2023',
                    style: TextStyle(fontSize: 13,color: Colors.white,fontWeight: FontWeight.bold),
                  ),
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
