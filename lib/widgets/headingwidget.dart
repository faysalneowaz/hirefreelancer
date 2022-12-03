import 'package:flutter/material.dart';
import 'package:hirefreelancer/constant.dart';

class HeadingWidget extends StatelessWidget {
  String text;
  HeadingWidget({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: const TextStyle(
              color: blackColor, fontSize: 16, fontWeight: FontWeight.w700),
        ),
        Container(
          padding: const EdgeInsets.all(5.0),
          decoration: BoxDecoration(
            color: grayColor,
            borderRadius: BorderRadius.circular(25.0),
          ),
          child: const Icon(
            Icons.more_horiz,
            color: blackColor,
          ),
        ),
      ],
    );
  }
}
