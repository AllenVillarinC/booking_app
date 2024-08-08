import 'package:booking_app/configs/imports.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  late ScrollController scrollController;

  @override
  void initState() {
    super.initState();
    scrollController = ScrollController();
  }

  int millSecondsScrollUp = 500;
  void scrollToTop() {
    scrollController.animateTo(
      scrollController.position.minScrollExtent,
      curve: Curves.linear,
      duration: Duration(milliseconds: millSecondsScrollUp),
    );
  }

  List<Widget> body = [
    const HomePage(),
    const AppointmentsPage(),
    const UpdatesPage(),
    const SearchAppointmentsPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 10,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Theme.of(context).colorScheme.surface,
        unselectedItemColor:
            Theme.of(context).colorScheme.primary.withOpacity(0.3),
        selectedItemColor: Theme.of(context).colorScheme.primary,
        currentIndex: pageIndex,
        onTap: (int index) {
          setState(() {
            pageIndex = index;
            if (index == 1) {
              homeIcon = Ionicons.home_outline;
              calendarIcon = Ionicons.calendar;
              notificationIcon = Ionicons.notifications_outline;
              searchIcon = Ionicons.search_outline;
              personIcon = Ionicons.person_outline;
            } else if (index == 2) {
              homeIcon = Ionicons.home_outline;
              calendarIcon = Ionicons.calendar_outline;
              notificationIcon = Ionicons.notifications;
              searchIcon = Ionicons.search_outline;
              personIcon = Ionicons.person_outline;
            } else if (index == 3) {
              homeIcon = Ionicons.home_outline;
              calendarIcon = Ionicons.calendar_outline;
              notificationIcon = Ionicons.notifications_outline;
              searchIcon = Ionicons.search;
              personIcon = Ionicons.person_outline;
            } else if (index == 4) {
              homeIcon = Ionicons.home_outline;
              calendarIcon = Ionicons.calendar_outline;
              notificationIcon = Ionicons.notifications_outline;
              searchIcon = Ionicons.search_outline;
              personIcon = Ionicons.person;
            } else {
              homeIcon = Ionicons.home;
              calendarIcon = Ionicons.calendar_outline;
              notificationIcon = Ionicons.notifications_outline;
              searchIcon = Ionicons.search_outline;
              personIcon = Ionicons.person_outline;
            }
            scrollToTop();
          });
        },
        items: [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(homeIcon),
          ),
          BottomNavigationBarItem(
            label: "Appointments",
            icon: Icon(calendarIcon),
          ),
          BottomNavigationBarItem(
            label: "Updates",
            icon: Icon(notificationIcon),
          ),
          BottomNavigationBarItem(
            label: "Search",
            icon: Icon(searchIcon),
          ),
          BottomNavigationBarItem(
            label: "Profile",
            icon: Icon(personIcon),
          ),
        ],
      ),
      body: NestedScrollView(
        controller: scrollController,
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
              systemOverlayStyle: SystemUiOverlayStyle(
                  systemNavigationBarColor:
                      Theme.of(context).colorScheme.surface),
              title: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  gradient: LinearGradient(
                    colors: [Color(0xff780206), Color(0xff061161)],
                    stops: [0, 1],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                ),
                child: const Center(
                  child: Text(
                    "Reazy",
                    style: TextStyle(
                      fontSize: 30,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              floating: true,
              snap: true,
              centerTitle: true,
              backgroundColor: Theme.of(context).colorScheme.surface),
        ],
        body: SingleChildScrollView(
          child: Center(child: body[pageIndex]),
        ),
      ),
    );
  }
}
