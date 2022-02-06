import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:whatsappcopy/Component/Profile_component/index.dart';

class ChatMessenger extends StatefulWidget {
  ChatMessenger({Key? key}) : super(key: key);

  @override
  State<ChatMessenger> createState() => _ChatMessengerState();
}

class _ChatMessengerState extends State<ChatMessenger> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(100),
          // bottom: Navigator.pop(context),
          child: Container(
            decoration: BoxDecoration(color: Colors.grey.shade900),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    TextButton(
                        onPressed: () =>
                            Navigator.popAndPushNamed(context, "/list-chat"),
                        child: const Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        )),
                    PhotoProfile(
                      width: 40,
                      height: 40,
                      color: Colors.yellow,
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 5),
                      child: const Text(
                        "Josia Almeida",
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 3,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Icon(FontAwesomeIcons.video,
                          color: Colors.white, size: 15),
                      const Icon(
                        FontAwesomeIcons.phoneAlt,
                        color: Colors.white,
                        size: 15,
                      ),
                      const Icon(FontAwesomeIcons.ellipsisV,
                          color: Colors.white, size: 15)
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        body: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(color: Colors.amber),
            child: Stack(
              children: [
                Positioned(
                    bottom: 0,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade900,
                                  borderRadius: BorderRadius.circular(100)),
                              width: MediaQuery.of(context).size.width * 0.8,
                              height: 50,
                              child: const TextField(
                                cursorColor: Colors.white,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  prefixIcon:
                                      Icon(Icons.face, color: Colors.white),
                                  prefixIconColor: Colors.white,
                                  hintText: 'Mensagem',
                                  labelStyle: TextStyle(color: Colors.white),
                                  hintStyle: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                            Container(
                              width: 50,
                              margin: const EdgeInsets.only(left: 10),
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(100)),
                              child: TextButton(
                                  onPressed: () {},
                                  child: const Icon(FontAwesomeIcons.microphone,
                                      color: Colors.white)),
                            )
                          ],
                        ),
                      ),
                    ))
              ],
            )),
      ),
    );
  }
}
