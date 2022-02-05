import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:whatsappcopy/Modules/messenger_widget/index.dart';

class TabNavbarWidget extends StatefulWidget {
  TabNavbarWidget({Key? key}) : super(key: key);

  @override
  State<TabNavbarWidget> createState() => _TabNavbarWidgetState();
}

class _TabNavbarWidgetState extends State<TabNavbarWidget> {
  // ignore: prefer_const_declarations, unused_local_variable
  int controllerNavbar = 0;
  // ignore: prefer_const_declarations
  final borderBottom = const BorderSide(width: 2, color: Colors.green);
  // ignore: prefer_const_declarations, unused_local_variable
  final borderNone = const BorderSide(width: 0, color: Colors.transparent);
  final Grey = Colors.grey;
  final Green = Colors.green;
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(84),
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(offset: Offset(0, 3), color: Colors.grey.shade900)
          ]),
          child: Column(
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // ignore: prefer_const_constructors
                    Text(
                      "WhatsApp",
                      // ignore: prefer_const_constructors
                      style: TextStyle(color: Colors.grey, fontSize: 20),
                    ),
                    Container(
                      child: Row(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          // ignore: prefer_const_constructors
                          Icon(
                            Icons.search,
                            color: Colors.grey,
                          ),
                          // ignore: prefer_const_constructors
                          Icon(
                            FontAwesomeIcons.ellipsisV,
                            color: Colors.grey,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                          onPressed: () {
                            setState(() {
                              controllerNavbar = 1;
                            });
                          },
                          child: const Icon(
                            FontAwesomeIcons.camera,
                            color: Colors.grey,
                          ),
                        ),
                        Container(
                          // ignore: prefer_const_constructors
                          decoration: BoxDecoration(
                              // ignore: prefer_const_constructors
                              border: Border(
                                  bottom: controllerNavbar == 0
                                      ? borderBottom
                                      : borderNone)),
                          child: TextButton(
                            onPressed: () {
                              setState(() {
                                controllerNavbar = 0;
                              });
                            },
                            child: controllerNavbar == 0
                                ? const Text(
                                    "Conversas",
                                    style: TextStyle(
                                        color: Colors.green, fontSize: 18),
                                  )
                                : Text(
                                    "Conversas",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 18),
                                  ),
                          ),
                        ),
                        Container(
                          // ignore: prefer_const_constructors
                          decoration: BoxDecoration(
                              // ignore: prefer_const_constructors
                              border: Border(
                                  bottom: controllerNavbar == 2
                                      ? borderBottom
                                      : borderNone)),
                          child: TextButton(
                            onPressed: () {
                              setState(() {
                                controllerNavbar = 2;
                              });
                            },
                            child: controllerNavbar == 2
                                ? const Text(
                                    "Estado",
                                    style: TextStyle(
                                        color: Colors.green, fontSize: 18),
                                  )
                                : const Text(
                                    "Estado",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 18),
                                  ),
                          ),
                        ),
                        Container(
                          // ignore: prefer_const_constructors
                          decoration: BoxDecoration(
                              // ignore: prefer_const_constructors
                              border: Border(
                                  bottom: controllerNavbar == 3
                                      ? borderBottom
                                      : borderNone)),
                          child: TextButton(
                            onPressed: () {
                              setState(() {
                                controllerNavbar = 3;
                              });
                            },
                            child: controllerNavbar == 3
                                ? const Text(
                                    "Chamadas",
                                    style: TextStyle(
                                        color: Colors.green, fontSize: 18),
                                  )
                                : const Text(
                                    "Chamadas",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 18),
                                  ),
                          ),
                        )
                      ])),
            ],
          ),
        ),
      ),
      body: MessengerWidget(),
    );
  }
}
