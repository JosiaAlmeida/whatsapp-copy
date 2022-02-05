import 'package:flutter/material.dart';

class LenghtMessenger extends StatefulWidget {
  LenghtMessenger({Key? key}) : super(key: key);

  @override
  State<LenghtMessenger> createState() => _LenghtMessengerState();
}

class _LenghtMessengerState extends State<LenghtMessenger> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: Column(
        children: [
          // ignore: prefer_const_constructors
          const Text(
            "20:50",
            style: TextStyle(color: Colors.green),
          ),
          Container(
            margin: EdgeInsets.only(top: 5),
            alignment: Alignment.center,
            width: 20,
            height: 20,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100), color: Colors.green),
            child: const Text("1",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                )),
          ),
        ],
      ),
    );
  }
}
