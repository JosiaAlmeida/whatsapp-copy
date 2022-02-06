import 'package:flutter/material.dart';
import 'package:whatsappcopy/Modules/Chat_widget/index.dart';
import 'package:whatsappcopy/Modules/Tab_navbar_widget.dart';
import 'package:whatsappcopy/Widget/Splash_widget/index.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primaryColor: Colors.green),
        initialRoute: '/',
        routes: {
          '/': (context) => SplashWidget(),
          '/list-chat': (context) => TabNavbarWidget(),
          '/chat': (context) => ChatMessenger()
        });
  }
}
