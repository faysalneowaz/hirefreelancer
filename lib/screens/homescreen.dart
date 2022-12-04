// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:hirefreelancer/constant.dart';
import 'package:hirefreelancer/model/freelancheronrisemodel.dart';
import 'package:hirefreelancer/screens/bodywidget/toprowhomescreen.dart';
import 'package:hirefreelancer/widgets/headingwidget.dart';

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
          HeadingWidget(
            text: "Popular Categories",
          ),

          //list of categories
          Container(
            height: MediaQuery.of(context).size.height / 14,
            padding: const EdgeInsets.all(5),
            child: ListView.builder(
                // shrinkWrap: true,
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
          ),
          HeadingWidget(
            text: "Freelancher on Rise",
          ),
          FreelancherOnRiseList(),
        ],
      ),
    );
  }
}

class FreelancherOnRiseList extends StatelessWidget {
  const FreelancherOnRiseList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: freelanceronrise.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                _showmodalbottomsheet(context, index);
              },
              child: Container(
                padding: const EdgeInsets.all(8.0),
                margin: const EdgeInsets.only(
                  // bottom: 5.0,
                  top: 15.0,
                ),
                decoration: BoxDecoration(
                    border: Border.all(width: 1.0, color: grayColor),
                    borderRadius: BorderRadius.circular(15.0)),
                child: Column(
                  children: [
                    Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(35),
                          child: Image.network(
                            freelanceronrise[index].strimage,
                            height: 60,
                            width: 60,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              freelanceronrise[index].strname,
                              style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: blackColor),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const Icon(
                                  Icons.star_outline,
                                  size: 15,
                                  color: yellowColor,
                                ),
                                RichText(
                                  text: TextSpan(
                                      style:
                                          const TextStyle(color: yellowColor),
                                      text: "${freelanceronrise[index].star}",
                                      children: [
                                        TextSpan(
                                            text:
                                                " (${freelanceronrise[index].starcount})")
                                      ]),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Expanded(
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: IconButton(
                                color: secondaryColor,
                                onPressed: () {},
                                icon:
                                    const Icon(Icons.favorite_border_outlined)),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              freelanceronrise[index].strtype,
                              style: const TextStyle(
                                  color: blackColor,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const Text(
                              "Freelancher type",
                              style: TextStyle(
                                color: darkgrayColor,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "${freelanceronrise[index].joined}",
                              style: const TextStyle(
                                  color: blackColor,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const Text(
                              "Joined",
                              style: TextStyle(
                                color: darkgrayColor,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "${freelanceronrise[index].totalclient}",
                              style: const TextStyle(
                                  color: blackColor,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const Text(
                              "Total Clients",
                              style: TextStyle(
                                color: darkgrayColor,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }

  Future<dynamic> _showmodalbottomsheet(BuildContext context, int index) {
    return showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        backgroundColor: Colors.transparent,
        builder: (context) {
          return Container(
            margin: const EdgeInsets.only(top: 60),
            padding: const EdgeInsets.all(12.0),
            decoration: const BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25.0),
                topRight: Radius.circular(25.0),
              ),
            ),
            child: Column(
              children: [
                Container(
                  height: 4,
                  width: 50,
                  margin: const EdgeInsets.only(bottom: 10.0),
                  decoration: BoxDecoration(
                    color: darkgrayColor,
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(65),
                  child: Image.network(
                    freelanceronrise[index].strimage,
                    height: 120,
                    width: 120,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  height: 12.0,
                ),
                Text(
                  freelanceronrise[index].strname,
                  style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: blackColor),
                ),
                const SizedBox(
                  height: 5.0,
                ),
                Text(
                  freelanceronrise[index].strtype,
                  style: const TextStyle(
                      color: darkgrayColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w700),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: RichText(
                    textAlign: TextAlign.justify,
                    text: TextSpan(
                      text: "Bio",
                      style: const TextStyle(
                        color: blackColor,
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                      children: [
                        TextSpan(
                          text: "\n${freelanceronrise[index].strbio}",
                          style: const TextStyle(
                            color: darkgrayColor,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    "Recent Work",
                    style: TextStyle(
                      color: blackColor,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Container(
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  alignment: Alignment.centerLeft,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: freelanceronrise[index].recentworks.length,
                      itemBuilder: (c, i) {
                        return Container(
                          height: 80,
                          width: 100,
                          margin: const EdgeInsets.only(right: 18.0),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: grayColor,
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: Image.network(
                            freelanceronrise[index].recentworks[i],
                            fit: BoxFit.fill,
                          ),
                          // ClipRRect(
                          //   borderRadius: BorderRadius.circular(15),
                          //   child: Image.network(
                          //     freelanceronrise[index].recentworks[i],
                          //     height: 120,
                          //     width: 120,
                          //     fit: BoxFit.fitWidth,
                          //   ),
                          // ),
                        );
                      }),
                ),
              ],
            ),
          );
        });
  }
}
