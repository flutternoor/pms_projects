import 'package:flutter/material.dart';

import '../constants/constants.dart';
class LibraryScreensConainerWidget extends StatelessWidget {
  const LibraryScreensConainerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      decoration:BoxDecoration(
        borderRadius:  BorderRadius.circular(10),
        color: kLightBlueColor,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.folder_outlined,size: 30,color: Colors.white,),
                    SizedBox(width: 10,),
                    Text('Serial No.',style: TextStyle(color: Colors.white,fontSize: 17),)

                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.folder_outlined,size: 30,color: Colors.white,),
                    SizedBox(width: 10,),
                    Text('Accession No.',style: TextStyle(color: Colors.white,fontSize: 17),)

                  ],
                ),

              ],
            ),

            Row(
              children: [
                Icon(Icons.save,size: 30,color: Colors.white,),
                SizedBox(width: 10,),
                Text('Book Name:',style: TextStyle(color: Colors.white,fontSize: 17),)

              ],
            ),
            SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: const [
                    Icon(Icons.calendar_today_outlined,size: 30,color: Colors.white,),
                    SizedBox(width: 2,),
                    Text('Test Date:',style: TextStyle(color: Colors.white,fontSize: 15)),
                    SizedBox(width: 2,),
                    Text('27-Jan-2023',style: TextStyle(color: Colors.white,fontSize: 17)),
                  ],
                ),
                Container(
                  height: 40,
                  width: 120,
                  decoration: BoxDecoration(
                    color: const Color(0xfff06709),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: const Center(child: const Text('Download',style: TextStyle(fontSize: 18,color: Colors.white),),),
                )
              ],
            ),

          ],
        ),
      )
      ,
    );
  }
}
