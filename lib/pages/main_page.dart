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
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: true,
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
            leading: const Padding(
              padding: EdgeInsets.only(left: 10),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "REAZY",
                  style: TextStyle(
                      fontSize: 25,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
            actions: [
              IconButton(
                onPressed: () {
                  showModalBottomSheet(
                      showDragHandle: true,
                      context: context,
                      builder: (BuildContext context) {
                        return const SizedBox(child: UpdatesPage());
                      });
                },
                icon: Icon(
                  notificationIcon,
                  color: Colors.white,
                ),
              ),
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            const SearchAppointmentsPage()),
                  );
                },
                icon: const Icon(
                  Ionicons.search_outline,
                  color: Colors.white,
                ),
              )
            ],
            leadingWidth: MediaQuery.of(context).size.width,
            floating: true,
            snap: true,
            centerTitle: true,
            backgroundColor: Theme.of(context).colorScheme.surface,
            flexibleSpace: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Theme.of(context).colorScheme.secondary,
                    Theme.of(context).colorScheme.tertiary
                  ],
                  stops: const [0, 1],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
              ),
            ),
          ),
        ],
        body: SingleChildScrollView(
          child: Center(child: body[pageIndex]),
        ),
      ),
    );
  }
}
