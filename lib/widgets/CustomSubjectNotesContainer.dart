import 'package:flutter/material.dart';
class CustomSubjectNotesContainer extends StatelessWidget {
  final Color containerColor;
  final VoidCallback onTap;
  const CustomSubjectNotesContainer({
    Key? key,
    required this.containerColor,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(5),
        height: 220,
        decoration:BoxDecoration(
          borderRadius:  BorderRadius.circular(10),
          color: containerColor,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: const [
                      Text('S NO.',style: TextStyle(color: Colors.white,fontSize: 14),),

                      Text('1',style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold
                      ),)

                    ],
                  ),
                  Row(
                    children: const [
                      Text('Class',style: TextStyle(color: Colors.white,fontSize: 14),),

                      Text('12',style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold
                      ),)

                    ],
                  ),
                  Row(
                    children: const [
                      Text('Chapter/unit No:',style: TextStyle(color: Colors.white,fontSize: 14),),
                      Text('0',style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold
                      ),)

                    ],
                  ),

                ],
              ),
              SizedBox(height: 15,),
              Text('Name',style: TextStyle(color: Colors.white,fontSize: 15,),),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Table Of Contents ',style: TextStyle(color: Colors.white,fontSize: 21,fontWeight: FontWeight.bold),textAlign: TextAlign.justify),
                  Container(
                    height: 35,
                    width: 110,
                    decoration: BoxDecoration(
                      color: const Color(0xfff06709),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: const Center(child: Text('download',style: TextStyle(fontSize: 18,color: Colors.white),),),
                  )
                ],
              ),
              SizedBox(height: 15,),

              Text('Description',style: TextStyle(color: Colors.white,fontSize: 15,),),
              Text('Short Description ',style: TextStyle(color: Colors.white,fontSize: 21,fontWeight: FontWeight.bold),textAlign: TextAlign.justify),

            ],
          ),
        )
        ,
      ),
    );
  }
}
