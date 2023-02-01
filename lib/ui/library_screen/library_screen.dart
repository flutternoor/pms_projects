import 'package:flutter/material.dart';
import '../../widgets/lbrary_screen_container_widget.dart';
import '../../widgets/row_widget.dart';
class LibraryScreen extends StatelessWidget {
  const LibraryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Center(child: Text('Library',style: TextStyle(color: Colors.black),))),
      drawer: const Drawer(
        backgroundColor: Colors.orange,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              const SizedBox(height: 5,),
              RowWidget(tileName: 'Issued Books', seeAllText: '', onTap: () {  },),
              const SizedBox(height: 10,),
              const LibraryScreensConainerWidget(),
              const SizedBox(height: 5,),
              const LibraryScreensConainerWidget(),
              const SizedBox(height: 5,),
              const LibraryScreensConainerWidget(),
              const SizedBox(height: 5,),
              const LibraryScreensConainerWidget(),
              const SizedBox(height: 5,),
            ],
          ),
        ),
      ),
    );
  }
}

