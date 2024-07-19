import 'package:booking_app/widgets/cards/business_card.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:ionicons/ionicons.dart';

class OpeningPage extends StatefulWidget {
  const OpeningPage({super.key});

  @override
  State<OpeningPage> createState() => _OpeningPageState();
}

class _OpeningPageState extends State<OpeningPage> {
  int tabIconColor = 0xff4472C4;
  IoniconsData tabIconChange0 = Ionicons.home;
  IoniconsData tabIconChange1 = Ionicons.calendar_outline;
  IoniconsData tabIconChange2 = Ionicons.notifications_outline;
  IoniconsData tabIconChange3 = Ionicons.person_circle_outline;
  int iconColor0 = 0xffffffff;
  int iconColor1 = 0xffffffff;
  int iconColor2 = 0xffffffff;
  int iconColor3 = 0xffffffff;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, innderBoxIsScrolled) => [
          SliverAppBar(
            actions: const [
              Padding(
                padding: EdgeInsets.only(right: 20),
                child: Icon(
                  Ionicons.settings_outline,
                  color: Color(0xffffffff), // needs to be changed
                ),
              )
            ],
            leading: const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10, right: 5),
                  child: Icon(
                    Ionicons.logo_github,
                    size: 30,
                    color: Color(0xffffffff),
                  ),
                ),
                Text(
                  "BuzzUp",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Color(0xffffffff),
                  ),
                ),
              ],
            ),
            leadingWidth: MediaQuery.of(context).size.width,
            floating: true,
            snap: true,
            centerTitle: true,
            backgroundColor: const Color(0xff111111),
          ),
        ],
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Book ",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w700,
                            color: Color(0xffffffff),
                          ),
                        ),
                        Text(
                          "an appointment",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w300,
                            color: const Color(0xffffffff).withOpacity(0.5),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: TextField(
                        style: const TextStyle(color: Color(0xffffffff)),
                        cursorColor: const Color(0xffffffff),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 10),
                          prefixIcon: const Icon(Ionicons.search_outline),
                          prefixIconColor: const Color(0xffffffff),
                          suffixIcon: const Icon(Ionicons.mic_outline),
                          suffixIconColor: const Color(0xffffffff),
                          filled: true,
                          fillColor: const Color(0xff111111),
                          hintText: "Search services",
                          hintStyle: TextStyle(
                            color: const Color(0xffffffff).withOpacity(0.7),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: const Color(0xffffffff).withOpacity(0.3),
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color(0xffffffff),
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Nearby",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xffffffff),
                          ),
                        ),
                        Text(
                          "More",
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xffffffff),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 5),
                    SizedBox(
                      height: 180,
                      child: ListView.builder(
                        itemCount: 10,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          // Replace with your BusinessCard widget
                          return const Padding(
                            padding: EdgeInsets.only(right: 5),
                            child: BusinessCard(),
                          );
                        },
                      ),
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Popular",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xffffffff),
                          ),
                        ),
                        Text(
                          "More",
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xffffffff),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 5),
                    SizedBox(
                      height: 180,
                      child: ListView.builder(
                        itemCount: 10,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          // Replace with your BusinessCard widget
                          return const Padding(
                            padding: EdgeInsets.only(right: 5),
                            child: BusinessCard(),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          color: Color(0xff111111),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
          child: GNav(
            backgroundColor: const Color(0xff111111),
            color: const Color(0xffffffff),
            activeColor: Color(tabIconColor),
            gap: 3,
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            onTabChange: (value) {
              setState(
                () {
                  if (value == 0) {
                    tabIconColor = 0xff4472C4;
                    tabIconChange0 = Ionicons.home;
                    tabIconChange1 = Ionicons.calendar_outline;
                    tabIconChange2 = Ionicons.notifications_outline;
                    tabIconChange3 = Ionicons.person_circle_outline;
                  } else if (value == 1) {
                    tabIconColor = 0xff2FF924;
                    tabIconChange0 = Ionicons.home_outline;
                    tabIconChange1 = Ionicons.calendar;
                    tabIconChange2 = Ionicons.notifications_outline;
                    tabIconChange3 = Ionicons.person_circle_outline;
                  } else if (value == 2) {
                    tabIconColor = 0xffFFCE31;
                    tabIconChange0 = Ionicons.home_outline;
                    tabIconChange1 = Ionicons.calendar_outline;
                    tabIconChange2 = Ionicons.notifications;
                    tabIconChange3 = Ionicons.person_circle_outline;
                  } else {
                    tabIconColor = 0xffffffff;
                    tabIconChange0 = Ionicons.home_outline;
                    tabIconChange1 = Ionicons.calendar_outline;
                    tabIconChange2 = Ionicons.notifications_outline;
                    tabIconChange3 = Ionicons.person_circle;
                  }
                },
              );
            },
            tabs: [
              GButton(
                icon: tabIconChange0,
                iconColor: Color(iconColor0),
                text: "Home",
                textStyle: const TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold),
              ),
              GButton(
                icon: tabIconChange1,
                iconColor: Color(iconColor1),
                text: "Appointments",
                textStyle: const TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold),
              ),
              GButton(
                icon: tabIconChange2,
                iconColor: Color(iconColor2),
                text: "Updates",
                textStyle: const TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold),
              ),
              GButton(
                icon: tabIconChange3,
                text: "You",
                textStyle: const TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
