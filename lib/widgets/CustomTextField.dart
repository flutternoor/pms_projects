import 'package:flutter/material.dart';

import '../constants/constants.dart';
class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    required this.chapterNameController,
  }) : super(key: key);

  final TextEditingController chapterNameController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: chapterNameController,
      keyboardType: TextInputType.name,
      cursorColor: kAppColor,
      decoration: const InputDecoration(
        contentPadding: EdgeInsets.symmetric(
            vertical: 20, horizontal: 10),
        border: InputBorder.none,

        fillColor: kTextFieldColor,
        filled: true,
      ),
    );
  }
}
