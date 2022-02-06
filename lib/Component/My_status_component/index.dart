import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:whatsappcopy/Component/Profile_component/index.dart';

class MyStateComponent extends StatefulWidget {
  MyStateComponent({Key? key}) : super(key: key);

  @override
  State<MyStateComponent> createState() => _MyStateComponentState();
}

class _MyStateComponentState extends State<MyStateComponent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(width: 2, color: Colors.green)),
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: PhotoProfile(
                    width: 50,
                    height: 50,
                    color: Colors.amber,
                  ),
                ),
              ),
              // ignore: avoid_unnecessary_containers
              Container(
                margin: const EdgeInsets.only(left: 10),
                child: const Text.rich(TextSpan(
                    text: "O Meu estado",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                    children: [
                      TextSpan(
                          text: "\nHoje, 15:31",
                          style: TextStyle(color: Colors.grey, fontSize: 15))
                    ])),
              )
            ],
          ),
          const Icon(
            FontAwesomeIcons.ellipsisH,
            color: Colors.grey,
            size: 18,
          )
        ],
      ),
    );
  }
}
