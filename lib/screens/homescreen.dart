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
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              const TopRow(),
              const SizedBox(
                height: 20.0,
              ),
              const Text(
                "Search for freelancer",
                style: TextStyle(
                  color: blackColor,
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              //search box
              Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: TextField(
                      decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.search),
                          hintText: "Search freelancher",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(28.0))),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    margin: const EdgeInsets.only(
                      left: 10,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: grayColor,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    child: const Icon(
                      Icons.mic,
                      color: blackColor,
                    ),
                  ),
                ],
              ),

              const SizedBox(
                height: 10.0,
              ),
              //popular categories
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Popular Categories",
                    style: TextStyle(
                        color: blackColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w700),
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
              ),

              //list of categories
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
