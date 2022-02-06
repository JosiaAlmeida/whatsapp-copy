import 'package:flutter/material.dart';
import 'package:whatsappcopy/Component/Description_Messenger_component/index.dart';
import 'package:whatsappcopy/Component/My_status_component/index.dart';
import 'package:whatsappcopy/Component/Profile_component/index.dart';

class StateWidget extends StatefulWidget {
  StateWidget({Key? key}) : super(key: key);

  @override
  State<StateWidget> createState() => _StateWidgetState();
}

class _StateWidgetState extends State<StateWidget> {
  // Widget UserStateFriend(){
  //   for (var i = 0; i < 5; i++) {
  //     return Row(children: [
  //       PhotoProfile(color: Colors.white, width: 50, height: 50,),
  //       DescriprionMessenger(user: "Hernany Simão", messenger: "há 40 minutos")
  //     ],);
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        child: ListView(
          children: [
            MyStateComponent(),
            Container(
                margin: const EdgeInsets.only(top: 20),
                child: const Text(
                  "Atualizações recentes",
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                )),
            Container(
              margin: const EdgeInsets.only(top: 15),
              child: Row(children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(color: Colors.green, width: 2)),
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: PhotoProfile(
                      color: Colors.white,
                      width: 50,
                      height: 50,
                    ),
                  ),
                ),
                DescriprionMessenger(
                    user: "Hernany Simão", messenger: "há 40 minutos")
              ]),
            )
          ],
        ),
      ),
    );
  }
}
