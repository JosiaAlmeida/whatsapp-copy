import 'package:flutter/material.dart';

class PhotoProfile extends StatelessWidget {
  Color color;
  double? height, width;
  PhotoProfile({
    Key? key,
    required this.color,
    this.width,
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(100), color: color),
    );
  }
}
