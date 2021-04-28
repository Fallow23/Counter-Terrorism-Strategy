import 'package:auth_buttons/auth_buttons.dart';
import 'package:contest/screens/login_page.dart';
import 'package:contest/screens/sign_up/sign_up_name.dart';
import 'package:contest/screens/welcome_page.dart';
import 'package:contest/screens/widgets/contest_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:transition/transition.dart';

class AuthenticatePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.symmetric(
            horizontal: 25,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 50,
              ),
              SvgPicture.asset(
                'assets/images/contest-logo.svg',
                height: 115,
                width: 115,
              ),
              SizedBox(
                height: 110,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  FacebookAuthButton(
                    onPressed: () {},
                    style: AuthButtonStyle(
                        iconSize: 30,
                        iconType: AuthIconType.secondary,
                        buttonType: AuthButtonType.icon),
                  ),
                  GoogleAuthButton(
                    onPressed: () {},
                    style: AuthButtonStyle(
                        iconSize: 30,
                        iconType: AuthIconType.secondary,
                        buttonType: AuthButtonType.icon),
                  ),
                ],
              ),
              SizedBox(
                height: 70,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      child: Divider(
                        color: Color(0xff0F2C4E),
                        thickness: 3.0,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    'or',
                    style: TextStyle(fontSize: 22),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: Container(
                      child: Divider(
                        color: Color(0xff0F2C4E),
                        thickness: 3.0,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 45,
              ),
              ContestButton(
                onTap: () => Navigator.of(context).push(
                  Transition(
                      child: LoginPage(),
                      transitionEffect: TransitionEffect.FADE),
                ),
                height: 60,
                width: double.infinity,
                text: 'Login',
                textColor: Colors.white,
                buttonColor: Color(0xff3C5EA5),
              ),
              SizedBox(
                height: 30,
              ),
              ContestButton(
                onTap: () => Navigator.of(context).push(
                  Transition(
                      child: SignUpName(),
                      transitionEffect: TransitionEffect.FADE),
                ),
                height: 60,
                width: double.infinity,
                text: 'Sign Up',
                textColor: Colors.white,
                buttonColor: Color(0xff0F2C4E),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
