import 'package:booking_app/configs/lists.dart';
import 'package:flutter/material.dart';
import 'dart:math';

import 'package:ionicons/ionicons.dart';

class BusinessCard extends StatefulWidget {
  const BusinessCard({super.key});

  @override
  State<BusinessCard> createState() => _BusinessCardState();
}

class _BusinessCardState extends State<BusinessCard> {
  Random random = Random();

  @override
  Widget build(BuildContext context) {
    int randomNumber = random.nextInt(cardColorsDark.length);
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 100,
              width: MediaQuery.of(context).size.width * 0.8,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/barber_shop.jpg"),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
              ),
            ),
            Container(
              height: 100,
              width: MediaQuery.of(context).size.width * 0.8,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    const Color(0xff000000).withOpacity(0.8),
                    Colors.transparent
                  ],
                  stops: const [0, 1],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    // Reviews
                    Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(right: 5),
                          child: Icon(
                            Ionicons.star,
                            color: Color(0xffFFCE31),
                            size: 15,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 5),
                          child: Text(
                            "4.7",
                            style: TextStyle(
                                color: Color(0xffffffff),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 5),
                          child: Text(
                            "(180)",
                            style: TextStyle(
                              color: const Color(0xffffffff).withOpacity(0.5),
                            ),
                          ),
                        ),
                      ],
                    ),
                    // Location
                    const Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 5),
                          child: Icon(
                            Ionicons.location,
                            color: Color(0xffffffff),
                            size: 15,
                          ),
                        ),
                        Text(
                          "0.3 km",
                          style: TextStyle(
                            color: Color(0xffffffff),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        Container(
          height: 70,
          width: MediaQuery.of(context).size.width * 0.8,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(15),
              bottomRight: Radius.circular(15),
            ),
            color: Color(cardColorsDark[randomNumber]).withOpacity(0.5),
            // color: Color(0xff111111),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 5),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 5),
                        child: Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            border: Border.all(color: const Color(0xffffffff)),
                            borderRadius: BorderRadius.circular(15),
                            color: const Color(0xff000000),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              "assets/images/sample_picture.jpg",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      const Text(
                        "The Gentleman's Cut",
                        style:
                            TextStyle(color: Color(0xffffffff), fontSize: 12),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 100,
                  height: 30,
                  decoration: BoxDecoration(
                    color: const Color(0xffffffff),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Center(
                    child: Text(
                      "Book Now",
                      style: TextStyle(
                        color: Color(0xff000000),
                        fontSize: 13,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
