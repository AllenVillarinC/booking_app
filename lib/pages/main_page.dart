import 'package:booking_app/configs/imports.dart';
import 'package:booking_app/pages/favorites_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  double imageWidthHeight = 50;

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
    const FavoritesPage(),
    const HomePage(),
    const AppointmentsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20)),
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
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      "BOOKPOINT",
                      style: TextStyle(
                          fontSize: 15,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Ionicons.person),
              title: const Text("Account Information"),
              onTap: () {
                showModalBottomSheet(
                  showDragHandle: true,
                  context: context,
                  builder: (BuildContext context) {
                    return const IntrinsicHeight(
                      child: AccountInformationPage(),
                    );
                  },
                );
              },
            ),
            ListTile(
              leading: const Icon(Ionicons.lock_closed),
              title: const Text("Account Security"),
              onTap: () {
                showModalBottomSheet(
                  showDragHandle: true,
                  context: context,
                  builder: (BuildContext context) {
                    return const IntrinsicHeight(
                      child: AccountSecurityPage(),
                    );
                  },
                );
              },
            ),
            ListTile(
              leading: const Icon(Ionicons.sparkles),
              title: const Text("App Preference"),
              onTap: () {
                showModalBottomSheet(
                  showDragHandle: true,
                  context: context,
                  builder: (BuildContext context) {
                    return const IntrinsicHeight(
                      child: AppPreferencePage(),
                    );
                  },
                );
              },
            ),
            ListTile(
              leading: const Icon(Ionicons.settings),
              title: const Text("Account Management"),
              onTap: () {
                showModalBottomSheet(
                  showDragHandle: true,
                  context: context,
                  builder: (BuildContext context) {
                    return const IntrinsicHeight(
                      child: AccountManagementPage(),
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
      backgroundColor: Theme.of(context).colorScheme.surface,
      // APPLICATION BAR
      body: NestedScrollView(
        controller: scrollController,
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            systemOverlayStyle: SystemUiOverlayStyle(
                systemNavigationBarColor:
                    Theme.of(context).colorScheme.surface),
            leading: IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: const Icon(
                Ionicons.menu,
              ),
            ),
            title: Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
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
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "BOOKPOINT",
                  style: TextStyle(
                      fontSize: 15,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
            // ACTION BUTTONS
            actions: [
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SearchAppointmentsPage()),
                  );
                },
                icon: const Icon(
                  Ionicons.search,
                ),
              ),
              IconButton(
                onPressed: () {
                  showModalBottomSheet(
                      showDragHandle: true,
                      context: context,
                      builder: (BuildContext context) {
                        return const SizedBox(child: UpdatesPage());
                      });
                },
                icon: const Icon(
                  Ionicons.notifications,
                ),
              )
            ],
            floating: true,
            snap: true,
            centerTitle: true,
          ),
        ],
        // BODY CONTENTS
        body: SingleChildScrollView(
          child: Center(child: body[pageIndex]),
        ),
      ),
      // BOTTOM NAVIGATION BAR
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: false,
        backgroundColor: Theme.of(context).colorScheme.surface,
        unselectedItemColor:
            Theme.of(context).colorScheme.primary.withOpacity(0.3),
        selectedItemColor: Theme.of(context).colorScheme.primary,
        currentIndex: pageIndex,
        onTap: (int index) {
          setState(() {
            pageIndex = index;
            if (index == 1) {
              homeIcon = Ionicons.home;
              calendarIcon = Ionicons.calendar_outline;
              favoritesIcon = Ionicons.heart_circle_outline;
            } else if (index == 2) {
              homeIcon = Ionicons.home_outline;
              calendarIcon = Ionicons.calendar;
              favoritesIcon = Ionicons.heart_circle_outline;
            } else {
              homeIcon = Ionicons.home_outline;
              calendarIcon = Ionicons.calendar_outline;
              favoritesIcon = Ionicons.heart_circle;
            }
            scrollToTop();
          });
        },
        items: [
          BottomNavigationBarItem(
            label: "Favorites",
            icon: Icon(favoritesIcon),
          ),
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(homeIcon),
          ),
          BottomNavigationBarItem(
            label: "Appointments",
            icon: Icon(calendarIcon),
          ),
        ],
      ),
    );
  }
}
