import 'package:flutter/material.dart';

class ContestButton extends StatelessWidget {
  final double height, width;
   final Color textColor, buttonColor;
   final String text;
   final Function onTap;
  const ContestButton({
    Key key, @required this.height, @required this.width, @required this.text, @required this.textColor, @required this.buttonColor, @required this.onTap,
    
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(15),
        ),
        alignment: Alignment.center,
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
