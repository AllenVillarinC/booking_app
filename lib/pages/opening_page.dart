import 'package:booking_app/configs/imports.dart';

class OpeningPage extends StatefulWidget {
  const OpeningPage({super.key});

  @override
  State<OpeningPage> createState() => _OpeningPageState();
}

class _OpeningPageState extends State<OpeningPage> {
  @override
  void initState() {
    super.initState();
    scrollController = ScrollController();
  }

  void scrollToTop() {
    scrollController.animateTo(
      scrollController.position.minScrollExtent,
      curve: Curves.linear,
      duration: Duration(milliseconds: millSecondsScrollUp),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: NestedScrollView(
        controller: scrollController,
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            systemOverlayStyle: SystemUiOverlayStyle(
              systemNavigationBarColor: Theme.of(context).colorScheme.surface,
            ),
            actions: [
              Visibility(
                visible: profileIconVisibility,
                child: IconButton(
                  onPressed: () {
                    // Profile Page
                    setState(() {
                      Vibration.vibrate(duration: 10);
                      searchButtonState = Ionicons.search_outline;
                      updatesButtonState = Ionicons.notifications_outline;
                      homeButtonState = Ionicons.home_outline;
                      appTitleVisibility = false;
                      backVisibility = true;
                      homePageVisibility = false;
                      searchAppointmentPageVisibility = false;
                      updatesPageVisibility = false;
                      profilePageVisibility = true;
                      profileIconVisibility = false;
                      scrollToTop();
                    });
                  },
                  icon: UserPicture(
                    size: 25,
                    image: "assets/images/avatars/${avatars[avatarNumber]}.png",
                  ),
                ),
              ),
              IconButton(
                onPressed: () {
                  // Home Page
                  setState(() {
                    Vibration.vibrate(duration: 10);
                    searchButtonState = Ionicons.search_outline;
                    updatesButtonState = Ionicons.notifications_outline;
                    homeButtonState = Ionicons.home;
                    appTitleVisibility = true;
                    backVisibility = false;
                    homePageVisibility = true;
                    searchAppointmentPageVisibility = false;
                    updatesPageVisibility = false;
                    profilePageVisibility = false;
                    profileIconVisibility = true;
                    scrollToTop();
                  });
                },
                icon: Icon(
                  homeButtonState,
                  size: 20,
                ),
              ),
              IconButton(
                onPressed: () {
                  // Updates Page
                  setState(() {
                    Vibration.vibrate(duration: 10);
                    searchButtonState = Ionicons.search_outline;
                    updatesButtonState = Ionicons.notifications;
                    homeButtonState = Ionicons.home_outline;
                    appTitleVisibility = false;
                    backVisibility = true;
                    homePageVisibility = false;
                    searchAppointmentPageVisibility = false;
                    updatesPageVisibility = true;
                    profilePageVisibility = false;
                    profileIconVisibility = true;
                    scrollToTop();
                  });
                },
                icon: Icon(updatesButtonState),
                iconSize: 20,
              ),
              IconButton(
                onPressed: () {
                  // Search Appointments Page
                  setState(() {
                    Vibration.vibrate(duration: 10);
                    searchButtonState = Ionicons.search;
                    updatesButtonState = Ionicons.notifications_outline;
                    homeButtonState = Ionicons.home_outline;
                    appTitleVisibility = false;
                    backVisibility = true;
                    homePageVisibility = false;
                    searchAppointmentPageVisibility = true;
                    updatesPageVisibility = false;
                    profilePageVisibility = false;
                    profileIconVisibility = true;
                    scrollToTop();
                  });
                },
                icon: Icon(searchButtonState),
                iconSize: 20,
              ),
            ],
            leading: const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 20),
                child: BlackText(blackText: "BuzzUp", fontSize: 18),
              ),
            ),
            leadingWidth: MediaQuery.of(context).size.width,
            floating: true,
            snap: true,
            centerTitle: true,
            backgroundColor: Theme.of(context).colorScheme.surface,
          ),
        ],
        body: SingleChildScrollView(
          child: Center(
              child: Stack(
            children: [
              Visibility(
                visible: homePageVisibility,
                child: const HomePage().animate().fadeIn(
                      duration: Duration(milliseconds: millSecondsPage),
                    ),
              ),
              Visibility(
                visible: searchAppointmentPageVisibility,
                child: const SearchAppointmentsPage().animate().fadeIn(
                      duration: Duration(milliseconds: millSecondsPage),
                    ),
              ),
              Visibility(
                visible: updatesPageVisibility,
                child: const UpdatesPage().animate().fadeIn(
                      duration: Duration(milliseconds: millSecondsPage),
                    ),
              ),
              Visibility(
                visible: profilePageVisibility,
                child: const ProfilePage().animate().fadeIn(
                      duration: Duration(milliseconds: millSecondsPage),
                    ),
              ),
            ],
          )),
        ),
      ),
    );
  }
}
