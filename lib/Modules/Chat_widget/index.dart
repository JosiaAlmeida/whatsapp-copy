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
          preferredSize: Size.fromHeight(70),
          // bottom: Navigator.pop(context),
          child: Container(
            decoration: BoxDecoration(color: Colors.grey.shade900),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    TextButton(
                        onPressed: () =>
                            Navigator.popAndPushNamed(context, "/list-chat"),
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        )),
                    PhotoProfile(
                      width: 40,
                      height: 40,
                      color: Colors.yellow,
                    ),
                  ],
                ),
                Text(
                  "Josia Almeida",
                  style: TextStyle(color: Colors.white),
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 3,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(
                        FontAwesomeIcons.video,
                        color: Colors.white,
                      ),
                      Icon(FontAwesomeIcons.phoneAlt, color: Colors.white),
                      Icon(FontAwesomeIcons.ellipsisV, color: Colors.white)
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
            decoration: BoxDecoration(color: Colors.amber),
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
                              child: TextField(
                                decoration: InputDecoration(
                                  prefixIcon:
                                      Icon(Icons.face, color: Colors.white),
                                  prefixIconColor: Colors.white,
                                  labelText: 'Mensagem',
                                  labelStyle: TextStyle(color: Colors.white),
                                  hintStyle: TextStyle(color: Colors.white),
                                  // suffixIcon: Row(
                                  //   children: [
                                  //     Icon(Icons.camera),
                                  //     Icon(Icons.camera)
                                  //   ],
                                  // ),
                                  // suffixIconColor: Colors.white
                                ),
                              ),
                            ),
                            Container(
                              width: 50,
                              margin: EdgeInsets.only(left: 10),
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(100)),
                              child: TextButton(
                                  onPressed: () {},
                                  child: Icon(FontAwesomeIcons.microphone,
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
