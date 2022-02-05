import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:whatsappcopy/Widget/Tab_navbar_widget.dart';

class SplashWidget extends StatelessWidget {
  const SplashWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            SplashScreen(
              seconds: 10,
              navigateAfterSeconds: TabNavbarWidget(),
              loaderColor: Colors.transparent,
            ),
            Center(
              child: Container(
                width: 80,
                height: 80,
                // ignore: prefer_const_constructors
                decoration: BoxDecoration(
                    color: Colors.white,
                    // ignore: prefer_const_constructors
                    image: DecorationImage(
                        // fit: BoxFit.cover,
                        // ignore: prefer_const_constructors
                        image: AssetImage('assets/img/download.jpeg'))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
