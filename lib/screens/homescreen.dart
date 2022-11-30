import 'package:flutter/material.dart';
import 'package:hirefreelancer/constant.dart';
import 'package:hirefreelancer/screens/bodywidget/toprowhomescreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> pCategoryname = [
    "UI Designer",
    "UX Designer",
    "Flutter Developer",
    "Web Developer",
    "IOS Developer",
    "System Developer"
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
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
          Container(
            height: MediaQuery.of(context).size.height / 14,
            padding: EdgeInsets.all(5),
            child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: pCategoryname.length,
                itemBuilder: (context, index) {
                  return Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(5),
                    margin: const EdgeInsets.only(right: 8),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: darkgrayColor,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(
                        28.0,
                      ),
                    ),
                    child: Text(
                      pCategoryname[index],
                      style: const TextStyle(color: blackColor),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
