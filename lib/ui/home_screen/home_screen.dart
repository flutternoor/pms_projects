import 'package:flutter/material.dart';

import '../../constants/constants.dart';
import '../../widgets/category_container_widget.dart';
import '../../widgets/date_sheet_container.dart';
import '../../widgets/row_widget.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  ///Images list
  List<String> subjectImageList = [
    'assets/images/chemistry_img.png',
    'assets/images/physics_img.png',
    'assets/images/biology_img.png',
    'assets/images/english_img.jpg',
    'assets/images/maths_img.png',
    'assets/images/urdu_img.png',
    'assets/images/islamyat_img.png',
    'assets/images/pak_studies_img.png',
    'assets/images/pak_studies_img.png',

  ];
  List<String> subjectNameList = [
    'Che',
    'Phy',
    'Bio',
    'Eng',
    'Math',
    'Ur',
    'Is',
    'PS',
    'CS',

  ];
  List<Color> subjectContainerColor = [
    kAppColor,
    kBlueColor,
    kGreenColor,
    kLightBlueColor,
    kLightCreemColor,
    kLightPinkColor,
    kAppColor,
    kLightBlackColor,
    kLightCreemColor

  ];

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
        title: Row(
          children: const[
            Text('Welcome ',style: TextStyle(color: Colors.black),),
            Text('Huzaifa!',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
          ],
        ),
        actions: [
          Image.asset('assets/images/title_img.png'),
        ],

      ),
      drawer: const Drawer(
        backgroundColor: Colors.orange,

      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(children: [

            ///Category Row
             RowWidget(tileName: "Category",seeAllText: 'See All', onTap: () {  },),
            const SizedBox(height: 10,),
            ///Category Container
            Row(
              children: [
                CategoryContainerWidget(containerText: 'Classes',
                  containerColor: kAppColor,
                  containerImage: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset('assets/images/classes_icon.png',),
                  ),
                ),
                const SizedBox(width: 10,),
                CategoryContainerWidget(containerText: 'Tests',
                  containerColor: kGreenColor,
                  containerImage: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset('assets/images/tests_img.png',),
                  ),
                ),

              ],
            ),
            const SizedBox(height: 20,),
            ///Notice Board Row
             RowWidget(tileName: 'Notice Board', seeAllText: 'See All', onTap: () {  },),
            const SizedBox(height: 10,),
            ///Notice Board Container
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color:kLightBlueColor,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                          child: const Center(child: Text('S.No :',)),
                        ),
                        const SizedBox(width: 12,),
                        Container(
                          height: 25,
                          width: 80,
                          decoration: BoxDecoration(
                            color: kGreenColor,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Center(child: const Text('Subject',)),
                        ),


                      ],
                    ),
                    const SizedBox(height: 25,),
                     const Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since 1500s.'
                      ,textAlign: TextAlign.justify,),
                    const SizedBox(height: 25,),
                    Row(
                      children: [
                        Expanded(
                          child: Row(
                            children: const [
                              Icon(Icons.calendar_today_outlined,size: 21,),
                              SizedBox(width: 5,),
                              Text('Published Date:',style: TextStyle(fontSize: 10),),
                              Text('27-Jan-2023',style: TextStyle(fontSize: 11),),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Row(
                            children: const [
                              Icon(Icons.calendar_today_outlined,size: 21,),
                              SizedBox(width: 5,),
                              Text('Published Date:',style: TextStyle(fontSize: 10),),
                              Text('27-Jan-2023',style: TextStyle(fontSize: 11),),
                            ],
                          ),
                        ),


                      ],
                    )


                  ],
                ),
              ),
            ),
            const SizedBox(height: 10,),
            ///My Subjects Row
             RowWidget(tileName: "My Subjects",seeAllText: 'See All', onTap: () {  },),
            const SizedBox(height: 10,),
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  // border: Border.all(width: 1, color: Colors.grey)
              ),
              child: ListView.builder(
                  padding: const EdgeInsets.all(5),
                // shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: subjectNameList.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.symmetric(horizontal: 12),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: subjectContainerColor[index],
                            ),
                            child: Image.asset(
                             subjectImageList[index],
                              fit: BoxFit.cover,
                              height: 40,
                              width: 40,

                            ),
                            //child: Text('ABC'),
                          ),
                          const SizedBox(height: 10),
                          Text(subjectNameList[index],style: const TextStyle(color: Colors.black),
                          ),

                        ],
                      ),
                    );
                  }),
            ),
            const SizedBox(height: 10,),
           RowWidget(tileName: 'Date Sheet', seeAllText: 'Sell All', onTap: (){}),
            const SizedBox(height: 10,),
            Container(
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                color: kLightBlueColor,
                borderRadius: BorderRadius.circular(5),

              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Stack(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Flexible(child: DateSheetContainerWidgets(text: '1',)),
                        SizedBox(width: 5),
                        Flexible(child: DateSheetContainerWidgets(text: 'XII',)),
                        SizedBox(width: 5),
                        Flexible(child:  DateSheetContainerWidgets(text: 'Computer Science',)),
                        SizedBox(width: 5),
                        Flexible(child: DateSheetContainerWidgets(text: 'Theory',)),

                      ],
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        height: 40,
                        width: 120,
                        decoration: BoxDecoration(
                          color: const Color(0xfff06709),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: const Center(child: const Text('Download',style: TextStyle(fontSize: 18,color: Colors.white),),),
                      ),
                    )
                  ],
                ),
              ),
            )



          ],
          ),
        ),
      )
    );
  }
}




