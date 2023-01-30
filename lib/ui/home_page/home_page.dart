import 'package:flutter/material.dart';
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
  int currentIndex =0;
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
        height: 80,
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(40),
              topRight: Radius.circular(40)),
          child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              backgroundColor: const Color.fromARGB(255, 193, 209, 240),
              iconSize: 20.0,
              selectedIconTheme: const IconThemeData(size: 28.0),
              selectedItemColor: const Color.fromARGB(255, 46, 90, 172),
              unselectedItemColor: Colors.black,
              selectedFontSize: 16.0,
              unselectedFontSize: 12,
              currentIndex: currentIndex,
              onTap: onTapped,
              items:  const <BottomNavigationBarItem>[
                BottomNavigationBarItem(

                  icon: Icon(Icons.home),
                  label: "Home",
                ),
                BottomNavigationBarItem(
                  // backgroundColor: Colors.red,
                  icon: Icon(Icons.search),
                  label: "Test",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.settings),
                  label: "Lectures",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.group),
                  label: "Library",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: "profile",
                ),
              ]),
        ),
      ),



    );
  }
}
