import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:malinta/screens/accueil_screen.dart';
import 'package:page_transition/page_transition.dart';

void main() {
  runApp(MonMalinta());
}

class MonMalinta extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Align(
        alignment: Alignment.center,
        child: AnimatedSplashScreen(
          duration: 3000,
          splash: "assets/images/malinta.png",
          nextScreen: const AccueilScreen(),
          splashTransition: SplashTransition.fadeTransition,
          pageTransitionType: PageTransitionType.fade,
          backgroundColor: Colors.white,
        ),
      ),
    );
  }
}
