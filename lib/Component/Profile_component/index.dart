import 'package:flutter/material.dart';

class PhotoProfile extends StatelessWidget {
  Color color;
  PhotoProfile({Key? key, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(100), color: color),
    );
  }
}
