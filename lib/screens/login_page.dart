import 'package:contest/screens/sign_up/sign_up_name.dart';
import 'package:contest/screens/widgets/contest_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:transition/transition.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.symmetric(
            horizontal: 25,
          ),
          child: ListView(
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
                height: 45,
              ),
              Center(
                child: Text(
                  'Login',
                  style: TextStyle(
                      fontSize:
                          Theme.of(context).textTheme.headline5.fontSize + 4,
                      fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              TextField(
                decoration: InputDecoration(
                  prefixIcon: Image.asset(
                    'assets/icons/person-icon.png',
                  ),
                  labelText: ' Username',
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email, color: Colors.black),
                  labelText: ' Email',
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Colors.black,
                  ),
                  labelText: ' Password',
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Forgot Password?',
                  style: TextStyle(
                      fontSize:
                          Theme.of(context).textTheme.bodyText2.fontSize + 4,
                      color: Colors.blue[900],
                      fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              ContestButton(
                onTap: () {},
                height: 60,
                width: double.infinity,
                text: 'Login',
                textColor: Colors.white,
                buttonColor: Color(0xff0F2C4E),
              ),
              SizedBox(
                height: 35,
              ),
              Center(
                child: GestureDetector(
                  onTap: () => Navigator.of(context).push(
                    Transition(
                        child: SignUpName(),
                        transitionEffect: TransitionEffect.TOP_TO_BOTTOM),
                  ),
                  child: RichText(
                    text: TextSpan(
                        text: 'Don\'t have an account? ',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize:
                                Theme.of(context).textTheme.bodyText1.fontSize +
                                    3),
                        children: [
                          TextSpan(
                            text: 'Sign Up Now!',
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
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
