import 'package:contest/screens/widgets/contest_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Center(
                child: SvgPicture.asset(
                  'assets/images/contest -watermark.svg',
                  height: 45,
                  width: 40,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hello Dimesh,',
                      style: TextStyle(
                          fontSize:
                              Theme.of(context).textTheme.headline6.fontSize -
                                  1,
                          // color: Colors.blue[900],
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'No. of Emergencies',
                              style: TextStyle(
                                fontSize: Theme.of(context)
                                        .textTheme
                                        .bodyText2
                                        .fontSize -
                                    1,
                                color: Colors.grey[600],
                              ),
                            ),
                            Text(
                              '0 Reported Cases',
                              style: TextStyle(
                                  fontSize: Theme.of(context)
                                          .textTheme
                                          .headline5
                                          .fontSize -
                                      2,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        ContestButton(
                            height: 50,
                            width: 100,
                            text: '+ New',
                            textColor: Colors.white,
                            buttonColor: Color(0xff3C5EA5),
                            onTap: () {}),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 35,
              ),
              Container(
                height: 320,
                width: double.infinity,
                color: Color(0xffF1F4F9),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Daily Summary',
                      style: TextStyle(
                          fontSize:
                              Theme.of(context).textTheme.headline6.fontSize,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    FittedBox(
                      child: Row(
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 35,
                                width: 35,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color(0xff333333).withOpacity(.1),
                                ),
                                alignment: Alignment.center,
                                child: Icon(
                                  Icons.arrow_downward_rounded,
                                ),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Emergencies Nearby',
                                    style: TextStyle(fontSize: 12),
                                  ),
                                  Text(
                                    '5',
                                    style: TextStyle(
                                        fontSize: Theme.of(context)
                                                .textTheme
                                                .headline6
                                                .fontSize -
                                            1,
                                        // color: Colors.blue[900],
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Row(
                            children: [
                              Container(
                                height: 35,
                                width: 35,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color(0xff333333).withOpacity(.1),
                                ),
                                alignment: Alignment.center,
                                child: Icon(
                                  Icons.arrow_upward_rounded,
                                ),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Emergencies Nationwide',
                                    style: TextStyle(fontSize: 12),
                                  ),
                                  Text(
                                    '35',
                                    style: TextStyle(
                                        fontSize: Theme.of(context)
                                                .textTheme
                                                .headline6
                                                .fontSize -
                                            1,
                                        // color: Colors.blue[900],
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Center(
                child: ContestButton(
                  height: 50,
                  width: MediaQuery.of(context).size.width * .8,
                  text: 'Report a case',
                  textColor: Colors.white,
                  buttonColor: Colors.black,
                  onTap: () {},
                ),
              ),
              SizedBox(
                height: 25,
              ),
            ],
          ),
        ),
      ),
      
    );
  }
}
