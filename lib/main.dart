import 'package:contest/screens/welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:fullscreen/fullscreen.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
  enterFullScreen(FullScreenMode.EMERSIVE);
}

void enterFullScreen(FullScreenMode fullScreenMode) async {
  await FullScreen.enterFullScreen(fullScreenMode);
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: GoogleFonts.sarabun().fontFamily,
        primarySwatch: Colors.blue,
      ),
      home: WelcomePage(),
    );
  }
}

