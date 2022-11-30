// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hirefreelancer/constant.dart';
import 'package:intl/intl.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              TopRow(),
              Text(
                "Search for freelancer",
                style: TextStyle(
                  color: blackColor,
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Row(
                children: [
                  Text(
                    "Popular Categories",
                    style: TextStyle(
                      color: blackColor,
                      fontSize: 14,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                      color: darkgrayColor,
                    ),
                    child: Icon(
                      Icons.more_horiz,
                      color: blackColor,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TopRow extends StatefulWidget {
  const TopRow({super.key});

  @override
  State<TopRow> createState() => _TopRowState();
}

class _TopRowState extends State<TopRow> {
  String formattedDate = DateFormat('dd-MM-yyyy').format(DateTime.now());
  // Initial Selected Value
  String dropdownvalue = 'Bangladesh';

  // List of items in our dropdown menu
  var items = [
    'Bangladesh',
    'India',
    'Pakistan',
    'Nepal',
    'USA',
  ];
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          formattedDate,
          style: const TextStyle(
            color: blackColor,
            fontSize: 14.0,
          ),
        ),
        DropdownButtonHideUnderline(
          child: DropdownButton(
            hint: const Text("Select Country"),
            // Initial Value
            value: dropdownvalue,

            // Down Arrow Icon
            icon: const Icon(Icons.keyboard_arrow_down),

            // Array list of items
            items: items.map((String items) {
              return DropdownMenuItem(
                value: items,
                child: Text(items),
              );
            }).toList(),
            // After selecting the desired option,it will
            // change button value to selected value
            onChanged: (String? newValue) {
              setState(() {
                dropdownvalue = newValue!;
              });
            },
          ),
        ),
      ],
    );
  }
}
