import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  Color bgColor;
  Color shColor;
  double elevation;
  double height;
  double width;
  double radius;
  String btntext;
  Color txtColor;
  Function() ontap;

  Button({
    Key? key,
    required this.bgColor,
    required this.shColor,
    required this.elevation,
    required this.height,
    required this.width,
    required this.radius,
    required this.btntext,
    required this.txtColor,
    required this.ontap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: bgColor,
        shadowColor: shColor, //specify the button's elevation color
        elevation: elevation, //4.0, //buttons Material shadow
        padding: const EdgeInsets.only(
            top: 4.0,
            bottom: 4.0,
            right: 8.0,
            left: 8.0), //specify the button's Padding
        minimumSize: Size(width, height),
        //   MediaQuery.of(context).size.width / 1.2,
        //   MediaQuery.of(context).size.width / 6,
        // ), //specify the button's first: width and second: height

        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius),
        ), // 15.0 used to construct ButtonStyle.mouseCursor

        alignment: Alignment.center, //set the button's child Alignment
      ),
      onPressed: ontap, //set onPressed to null to see the disabled properties
      child: Text(
        btntext,
        style: TextStyle(
          fontSize: 16,
          color: txtColor,
        ),
      ),
    );
  }
}
