import 'package:flutter/material.dart';

import '../constants/constants.dart';
class RowWidget extends StatelessWidget {
  const RowWidget({
    required this.tileName,
    required this.seeAllText,
    Key? key,
  }) : super(key: key);
  final String tileName;
  final String seeAllText;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(tileName.toString(),style: kTextStyle,),
        Text(seeAllText.toString()),
      ],
    );
  }
}