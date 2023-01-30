import 'package:flutter/material.dart';
class TextScreen extends StatelessWidget {
  const TextScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('Test Tapped');
    return Scaffold(
      body: Center(child: Text('Text Screen'),),
    );
  }
}
