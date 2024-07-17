import 'package:booking_app/widgets/cards/business_card.dart';
import 'package:booking_app/widgets/title_text.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class OpeningPage extends StatefulWidget {
  const OpeningPage({super.key});

  @override
  State<OpeningPage> createState() => _OpeningPageState();
}

class _OpeningPageState extends State<OpeningPage> {
  int iconColor0 = 0xffff78ae;
  int iconColor1 = 0xffffffff;
  int iconColor2 = 0xffffffff;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Align(
            alignment: Alignment.centerLeft,
            child: Row(
              children: [
                SizedBox(
                  width: 50,
                  height: 50,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(25),
                    child: Lottie.asset(
                      "assets/lottie/sven.json",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const Text(
                  "BookEase",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Color(0xffffffff)),
                ),
              ],
            ),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Icon(
                Icons.search,
                color: Color(0xffffffff),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Icon(
                Icons.settings,
                color: Color(0xffffffff),
              ),
            )
          ],
          backgroundColor: const Color(0xff000000),
          shadowColor: const Color(0xffffffff),
        ),
        bottomNavigationBar: CurvedNavigationBar(
            items: [
              Icon(
                Icons.favorite,
                color: Color(iconColor0),
              ),
              Icon(
                Icons.event_available,
                color: Color(iconColor1),
              ),
              Icon(
                Icons.schedule,
                color: Color(iconColor2),
              ),
              SizedBox(
                width: 25,
                height: 25,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12.5),
                  child: Image.asset(
                    "assets/images/profile.jpeg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
            height: 60,
            backgroundColor: const Color(0xffF1F9EC),
            buttonBackgroundColor: const Color(0xff000000),
            color: const Color(0xff000000),
            onTap: (value) {
              setState(() {
                if (value == 0) {
                  iconColor0 = 0xffff78ae;
                  iconColor1 = 0xffffffff;
                  iconColor2 = 0xffffffff;
                } else if (value == 1) {
                  iconColor0 = 0xffffffff;
                  iconColor1 = 0xff2FF924;
                  iconColor2 = 0xffffffff;
                } else if (value == 2) {
                  iconColor0 = 0xffffffff;
                  iconColor1 = 0xffffffff;
                  iconColor2 = 0xffFFCE31;
                } else {
                  iconColor0 = 0xffffffff;
                  iconColor1 = 0xffffffff;
                  iconColor2 = 0xffffffff;
                }
              });
            }),
        body: const SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                TitleText(),
                BusinessCard(),
                BusinessCard(),
                BusinessCard(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
