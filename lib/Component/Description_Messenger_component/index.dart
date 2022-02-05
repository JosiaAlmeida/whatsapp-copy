// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class DescriprionMessenger extends StatefulWidget {
  String user, messenger;
  DescriprionMessenger({Key? key, required this.user, required this.messenger})
      : super(key: key);

  @override
  State<DescriprionMessenger> createState() => _DescriprionMessengerState();
}

class _DescriprionMessengerState extends State<DescriprionMessenger> {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Container(
      margin: EdgeInsets.only(left: 8),
      child: Text.rich(TextSpan(
          text: "${widget.user}",
          style: TextStyle(color: Colors.white, fontSize: 20),
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            // ignore: prefer_const_constructors
            TextSpan(
                // ignore: prefer_const_constructors
                text: "\n${widget.messenger}",
                style: TextStyle(color: Colors.grey, fontSize: 18))
          ])),
    );
  }
}
