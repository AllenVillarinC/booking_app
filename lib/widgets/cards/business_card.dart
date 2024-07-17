import 'package:booking_app/configs/lists.dart';
import 'package:flutter/material.dart';
import 'dart:math';

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
        Container(
          width: 355,
          height: 200,
          decoration: BoxDecoration(
            color: Color(cardColorsDark[randomNumber]),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Business name",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Color(0xffffffff)),
                    ),
                    const Text(
                      "Business address",
                      style: TextStyle(fontSize: 16, color: Color(0xffffffff)),
                    ),
                    const Row(
                      children: [
                        Icon(
                          Icons.star,
                          size: 20,
                          color: Color(0xffFFCE31),
                        ),
                        Icon(
                          Icons.star,
                          size: 20,
                          color: Color(0xffFFCE31),
                        ),
                        Icon(
                          Icons.star,
                          size: 20,
                          color: Color(0xffFFCE31),
                        ),
                        Icon(
                          Icons.star,
                          size: 20,
                          color: Color(0xffFFCE31),
                        ),
                        Icon(
                          Icons.star,
                          size: 20,
                          color: Color(0xffFFCE31),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    // Show more button
                    Container(
                      width: 160,
                      height: 40,
                      decoration: BoxDecoration(
                        color: const Color(0xffF1F9EC),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: const Center(
                        child: Text("Show More",
                            style: TextStyle(color: Color(0xff000000))),
                      ),
                    ),
                  ]
                  // Show more button
                  ),
              // Business profile image
              Container(
                width: 130,
                height: 130,
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xffffffff)),
                  borderRadius: BorderRadius.circular(65),
                  color: const Color(0xff000000),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(65),
                  child: Image.asset(
                    "assets/images/sample_picture.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              // Business profile image
            ],
          ),
        ),
        const SizedBox(height: 10)
      ],
    );
  }
}
