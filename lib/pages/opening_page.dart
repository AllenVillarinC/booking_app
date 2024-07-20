import 'package:booking_app/configs/defaults.dart';
import 'package:booking_app/configs/imports.dart';

class OpeningPage extends StatefulWidget {
  const OpeningPage({super.key});

  @override
  State<OpeningPage> createState() => _OpeningPageState();
}

class _OpeningPageState extends State<OpeningPage> {
  int pageNumber = 0;
  late ScrollController scrollController;

  List<Widget> body = [
    const HomePage(),
    const AppointmentsPage(),
    const UpdatesPage(),
    const ProfilePage(),
  ];

  @override
  void initState() {
    super.initState();
    scrollController = ScrollController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        controller: scrollController,
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          // APPLICATION BAR
          const CustomAppBar(),
          // APPLICATION BAR
        ],
        body: SingleChildScrollView(
          // MAIN APP BODY
          child: body.elementAt(pageNumber),
          // MAIN APP BODY
        ),
      ),
      // BOTTOM NAVIGATION BAR
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: secondary,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
          child: GNav(
            iconSize: 25,
            textStyle: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            selectedIndex: pageNumber,
            backgroundColor: secondary,
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
                  pageNumber = value;
                  scrollController.animateTo(
                    scrollController.position.minScrollExtent,
                    curve: Curves.easeOut,
                    duration: const Duration(milliseconds: 500),
                  );
                },
              );
            },
            tabs: [
              GButton(
                icon: tabIconChange0,
                iconColor: Color(iconColor0),
                text: "Home",
              ),
              GButton(
                icon: tabIconChange1,
                iconColor: Color(iconColor1),
                text: "Appointments",
              ),
              GButton(
                icon: tabIconChange2,
                iconColor: Color(iconColor2),
                text: "Updates",
              ),
              GButton(
                leading: const UserPicture(
                  size: 25,
                  image: "assets/images/profile.jpeg",
                ),
                icon: tabIconChange3,
                text: "You",
              ),
            ],
          ),
        ),
      ),
      // BOTTOM NAVIGATION BAR
    );
  }
}
