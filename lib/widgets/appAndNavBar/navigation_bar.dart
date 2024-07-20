import 'package:booking_app/configs/imports.dart';

class CustomNavigationBar extends StatefulWidget {
  const CustomNavigationBar({super.key});

  @override
  State<CustomNavigationBar> createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xff111111),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        child: GNav(
          backgroundColor: const Color(0xff111111),
          color: primary,
          activeColor: Color(tabIconColor),
          gap: 5,
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          onTabChange: (value) {
            setState(
              () {
                if (value == 0) {
                  tabIconColor = 0xff4472C4;
                  tabIconChange0 = Ionicons.home;
                  tabIconChange1 = Ionicons.calendar_outline;
                  tabIconChange2 = Ionicons.notifications_outline;
                } else if (value == 1) {
                  tabIconColor = 0xff2FF924;
                  tabIconChange0 = Ionicons.home_outline;
                  tabIconChange1 = Ionicons.calendar;
                  tabIconChange2 = Ionicons.notifications_outline;
                } else if (value == 2) {
                  tabIconColor = 0xffFFCE31;
                  tabIconChange0 = Ionicons.home_outline;
                  tabIconChange1 = Ionicons.calendar_outline;
                  tabIconChange2 = Ionicons.notifications;
                } else {
                  tabIconColor = 0xffffffff;
                  tabIconChange0 = Ionicons.home_outline;
                  tabIconChange1 = Ionicons.calendar_outline;
                  tabIconChange2 = Ionicons.notifications_outline;
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
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            GButton(
              icon: tabIconChange1,
              iconColor: Color(iconColor1),
              text: "Appointments",
              textStyle: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            GButton(
              icon: tabIconChange2,
              iconColor: Color(iconColor2),
              text: "Updates",
              textStyle: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            GButton(
              leading: SizedBox(
                width: 30,
                height: 30,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    "assets/images/profile.jpeg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              icon: tabIconChange3,
              text: "You",
              textStyle: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
