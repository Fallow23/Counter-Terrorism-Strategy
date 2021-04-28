import 'package:contest/screens/login_page.dart';
import 'package:contest/screens/sign_up/sign_up_phone.dart';
import 'package:contest/screens/widgets/contest_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:transition/transition.dart';

class SignUpName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.all(10),
          child: ListView(
            children: [
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back),
                    onPressed: () => Navigator.of(context).pop(),
                    color: Colors.grey,
                  ),
                  SvgPicture.asset(
                    'assets/images/contest -watermark.svg',
                    height: 45,
                    width: 40,
                  ),
                  Container(
                    width: 50,
                    height: 70,
                    color: Colors.white,
                  )
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 35,
                  ),
                  RichText(
                    text: TextSpan(
                        text: 'STEP 1 OF 3\n',
                        style: GoogleFonts.lato(
                            color: Color(0xff3C5EA5),
                            fontSize:
                                Theme.of(context).textTheme.bodyText1.fontSize),
                        children: [
                          TextSpan(
                            text: 'What\'s your name?',
                            style: GoogleFonts.lato(
                                color: Colors.black,
                                fontSize: Theme.of(context)
                                        .textTheme
                                        .headline6
                                        .fontSize +
                                    3),
                          ),
                        ]),
                  ),
                ],
              ),
              SizedBox(
                height: 80,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'First Name',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize:
                              Theme.of(context).textTheme.headline6.fontSize),
                    ),
                    TextField(
                      decoration: InputDecoration(),
                    ),
                    SizedBox(
                      height: 55,
                    ),
                    Text(
                      'Surname',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize:
                              Theme.of(context).textTheme.headline6.fontSize),
                    ),
                    TextField(
                      decoration: InputDecoration(),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 70,
              ),
              ContestButton(
                onTap: () => Navigator.of(context).push(
                  Transition(
                      child: SignUpPhone(),
                      transitionEffect: TransitionEffect.BOTTOM_TO_TOP),
                ),
                height: 60,
                width: double.infinity,
                text: 'Proceed',
                textColor: Colors.white,
                buttonColor: Color(0xff0F2C4E),
              ),
              SizedBox(
                height: 70,
              ),
              Center(
                child: GestureDetector(
                  onTap: () => Navigator.of(context).push(
                    Transition(
                        child: LoginPage(),
                        transitionEffect: TransitionEffect.FADE),
                  ),
                  child: RichText(
                    text: TextSpan(
                        text: 'Already have an account? ',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize:
                                Theme.of(context).textTheme.bodyText1.fontSize +
                                    3),
                        children: [
                          TextSpan(
                            text: 'Sign In',
                            style: TextStyle(
                                color: Colors.blue[900],
                                fontSize: Theme.of(context)
                                        .textTheme
                                        .bodyText1
                                        .fontSize +
                                    3),
                          ),
                        ]),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              )
            ],
          ),
        ),
      ),
    );
  }
}
