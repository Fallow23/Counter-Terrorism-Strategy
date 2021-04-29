import 'package:contest/screens/widgets/contest_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class EmergencyAlertNotifyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.grey,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: Colors.white,
        title: Text(
          'Emergency Alert',
          style: TextStyle(
            color: Colors.grey,
            fontSize: 23,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 15,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Text(
                'Please standby, we are currently processing your request.',
                style: TextStyle(
                  fontSize: 19,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Container(
            height: 400,
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.symmetric(
              horizontal: 30,
            ),
            decoration: BoxDecoration(
              border: Border.all(),
            ),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 15, bottom: 20),
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: 40,
                  color: Colors.grey[300],
                  child: Text(
                    'Notifying',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                Text(
                  'Gwange Police Station',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                    fontSize: 23,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Image.asset(
                  'assets/images/police-logo.png',
                  height: 260,
                  width: 240,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Text(
              'You have 00:59 seconds to',
              style: TextStyle(
                fontSize: 24,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ContestButton(
                height: 50,
                width: 160,
                text: 'Withdraw Alert',
                textColor: Colors.white,
                buttonColor: Colors.red,
                onTap: () {},
              ),
              ContestButton(
                height: 50,
                width: 160,
                text: 'Proceed',
                textColor: Colors.white,
                buttonColor: Colors.green[700],
                onTap: () {},
              ),
            ],
          )
        ],
      ),
    );
  }
}
