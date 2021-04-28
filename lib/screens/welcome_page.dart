import 'package:contest/screens/authenticate.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'widgets/contest_button.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff3C5EA5),
      body: Container(
        margin: EdgeInsets.symmetric(
          horizontal: 25,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 70,
            ),
            Text(
              'Say Hello to...',
              style: GoogleFonts.sarabun(
                  fontSize: Theme.of(context).textTheme.headline4.fontSize - 5,
                  color: Colors.white),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'CONTEST',
              style: GoogleFonts.sarabun(
                  fontSize: Theme.of(context).textTheme.headline3.fontSize + 3,
                  color: Color(0XffF5D800)),
            ),
            SizedBox(
              height: 55,
            ),
            SvgPicture.asset(
              'assets/images/welcome-picture.svg',
              height: 200,
              width: 200,
            ),
            SizedBox(
              height: 45,
            ),
            Text(
              'Your one stop Counter-terrorism Strategy application aimed at ensuring your safety and security',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: Theme.of(context).textTheme.headline6.fontSize),
            ),
            SizedBox(
              height: 25,
            ),
            Divider(
              color: Colors.white,
              thickness: 4.0,
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 2,
                  child: Text(
                    'Are you Ready?',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize:
                            Theme.of(context).textTheme.headline6.fontSize),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: ContestButton(
                    onTap: () => Navigator.of(context).push(
                      CupertinoPageRoute(
                        builder: (context) => AuthenticatePage(),
                      ),
                    ),
                    height: 55,
                    width: 200,
                    text: 'Let\'s Get Started',
                    textColor: Color(0xff3C5EA5),
                    buttonColor: Colors.white,
                  ),
                ),
              ],
            ),
            Spacer(),
            Center(
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Skip Introduction',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: Theme.of(context).textTheme.headline6.fontSize),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
