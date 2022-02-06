import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:whatsappcopy/Modules/Camera/index.dart';
import 'package:whatsappcopy/Modules/Chat_widget/index.dart';
import 'package:whatsappcopy/Modules/Tab_navbar_widget.dart';
import 'package:whatsappcopy/Widget/Splash_widget/index.dart';

class MyApp extends StatelessWidget {
  final cameras;
  MyApp({Key? key, required this.cameras}) : super(key: key);

  // Obtain a list of the available cameras on the device.
  // final cameras = await availableCameras();

  // // Get a specific camera from the list of available cameras.
  // final firstCamera = cameras.first;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primaryColor: Colors.green),
        initialRoute: '/',
        routes: {
          '/': (context) => SplashWidget(),
          '/list-chat': (context) => TabNavbarWidget(),
          '/chat': (context) => ChatMessenger(),
          '/TakePictureScreen': (context) => TakePictureScreen(camera: cameras)
        });
  }
}
