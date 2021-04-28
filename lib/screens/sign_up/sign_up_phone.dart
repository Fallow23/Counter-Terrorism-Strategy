import 'package:contest/screens/widgets/contest_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpPhone extends StatelessWidget {
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
                        text: 'STEP 2 OF 3\n',
                        style: GoogleFonts.lato(
                            color: Color(0xff3C5EA5),
                            fontSize:
                                Theme.of(context).textTheme.bodyText1.fontSize),
                        children: [
                          TextSpan(
                            text: 'What\'s your phone number?',
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
                height: 90,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            child: Text(
                              '+234',
                              style: TextStyle(
                                  fontSize: 19, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 4,
                          child: Container(
                            child: TextField(
                              keyboardType: TextInputType.number,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "We'll send you an SMS verification code.",
                      style: TextStyle(color: Colors.blue[800]),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 100,
              ),
              ContestButton(
                onTap: () {},
                height: 60,
                width: double.infinity,
                text: 'Proceed',
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
