import 'package:flutter/material.dart';
import 'package:hirefreelancer/constant.dart';
import 'package:intl/intl.dart';

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
