import 'package:contest/screens/emergency/emergency_alert_notify.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:transition/transition.dart';

class EmergencyAlertSignalPage extends StatelessWidget {
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
      body: Stack(
        alignment: Alignment.center,
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: InkWell(
              onTap: () => Navigator.of(context).push(
                Transition(
                    child: EmergencyAlertNotifyPage(),
                    transitionEffect: TransitionEffect.RIGHT_TO_LEFT),
              ),
              child: SvgPicture.asset(
                'assets/images/emergency-button.svg',
                height: 240,
              ),
            ),
          ),
          Positioned(
            bottom: 150,
            child: Text(
              'Click to send an emergency signal',
              style: TextStyle(
                fontSize: Theme.of(context).textTheme.headline5.fontSize - 2,
                color: Colors.grey,
              ),
            ),
          ),
          Positioned(
            bottom: 30,
            child: Text(
              "You sent '0' signals in the past week",
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
          ),
        ],
      ),
    );
  }
}
