import 'package:flutter/material.dart';
import 'package:pms_projects/constants/constants.dart';
import 'package:pms_projects/ui/home_screen/home_screen.dart';
import 'package:pms_projects/ui/lectures_screen/lectures_screen.dart';
import 'package:pms_projects/ui/library_screen/library_screen.dart';
import 'package:pms_projects/ui/profile_screen/profile_screen.dart';
import 'package:pms_projects/ui/text_screen/text_screen.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 static int currentIndex =0;
  final  pages = [ const HomeScreen(), const TextScreen(), const LecturesScreen(), const LibraryScreen(), const ProfileScreen()];

  void onTapped(int index) {
    setState((){
      currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body:  pages[currentIndex],

      ///TODO: Here we change the background color of Bottom Navigation
      bottomNavigationBar:  Container(
        decoration: const BoxDecoration(
          borderRadius:  BorderRadius.only(
              topLeft: Radius.circular(40),
              topRight: Radius.circular(40)),
          color: Colors.grey
        ),
        height: 80,
        child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white54,
            iconSize: 20.0,
            selectedIconTheme: const IconThemeData(size: 26.0,),
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white54,
            selectedFontSize: 13.0,
            unselectedFontSize: 12,
            selectedLabelStyle:  const TextStyle(fontWeight: FontWeight.bold,color: Colors.red,),
            unselectedLabelStyle:
            const TextStyle(color: Colors.grey, fontWeight: FontWeight.normal),
            showSelectedLabels: true,
            showUnselectedLabels: true,
            currentIndex: currentIndex,
            onTap: onTapped,
            items:  [
              BottomNavigationBarItem(

                icon:currentIndex== 0 ?Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: kAppColor
                  ),
                  child:  const Icon(Icons.home_outlined),
                ):const Icon(Icons.home_outlined),
                label: "Home",
              ),
               BottomNavigationBarItem(
                // backgroundColor: Colors.red,
                icon:currentIndex== 1 ?Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: kAppColor
                  ),
                  child:  const Icon(Icons.file_present),
                ): Icon(Icons.file_present),
                label: "Test",
              ),
               BottomNavigationBarItem(
                icon: currentIndex== 2 ?Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: kAppColor
                  ),
                  child:  const Icon(Icons.featured_play_list_outlined),
                )
                    :Icon(Icons.featured_play_list_outlined),
                label: "Lectures",
              ),
               BottomNavigationBarItem(
                icon: currentIndex== 3 ?Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: kAppColor
                  ),
                  child:  const Icon(Icons.library_books_outlined),
                ): Icon(Icons.library_books_outlined),
                label: "Library",
              ),
               BottomNavigationBarItem(
                icon: currentIndex== 4 ?Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: kAppColor
                  ),
                  child:  const Icon(Icons.person_outline),
                ): Icon(Icons.person_outline),
                label: "profile",
              ),
            ]),
      ),



    );
  }
}
