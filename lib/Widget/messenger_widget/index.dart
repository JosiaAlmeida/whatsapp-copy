import 'package:flutter/material.dart';
import 'package:whatsappcopy/Component/Description_Messenger_component/index.dart';
import 'package:whatsappcopy/Component/NotifyMessenger/index.dart';
import 'package:whatsappcopy/Component/Profile_component/index.dart';

class MessengerWidget extends StatelessWidget {
  const MessengerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    final List<String> UserName = <String>[
      "Josia Almeida",
      "Josue Rufino",
      "Hernany Simao",
      "Almeida"
    ];
    // ignore: non_constant_identifier_names
    final List<String> Messenger = <String>[
      "Vem rápido",
      "Wy",
      "Feioooo",
      "Tranquilo"
    ];

    // ignore: non_constant_identifier_names
    final List<Color> Img = <Color>[
      Colors.yellow,
      Colors.redAccent,
      Colors.white,
      Colors.blueGrey
    ];
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.builder(
        itemCount: UserName.length,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: () => Navigator.pushNamed(context, '/chat'),
            child: Container(
              // ignore: prefer_const_constructors
              margin: EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      PhotoProfile(
                        width: 50,
                        height: 50,
                        color: Img[index],
                      ),
                      DescriprionMessenger(
                        user: UserName[index],
                        messenger: Messenger[index],
                      )
                    ],
                  ),
                  LenghtMessenger()
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
