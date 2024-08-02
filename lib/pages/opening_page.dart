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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        controller: scrollController,
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            systemOverlayStyle: const SystemUiOverlayStyle(
                systemNavigationBarColor: Colors.transparent),
            actions: [
              IconButton(
                onPressed: () {
                  // Search Appointments Page
                  setState(() {
                    searchButtonState = Ionicons.search;
                    updatesButtonState = Ionicons.notifications_outline;
                    userProfileVisibility = false;
                    backVisibility = true;
                    homePageVisibility = false;
                    searchAppointmentPageVisibility = true;
                    updatesPageVisibility = false;
                    profilePageVisibility = false;
                    scrollController.animateTo(
                      scrollController.position.minScrollExtent,
                      curve: Curves.easeOut,
                      duration: Duration(milliseconds: millSecondsScrollUp),
                    );
                  });
                },
                icon: Icon(searchButtonState),
                color: primary,
              ),
              IconButton(
                onPressed: () {
                  // Updates Page
                  setState(() {
                    searchButtonState = Ionicons.search_outline;
                    updatesButtonState = Ionicons.notifications;
                    userProfileVisibility = false;
                    backVisibility = true;
                    homePageVisibility = false;
                    searchAppointmentPageVisibility = false;
                    updatesPageVisibility = true;
                    profilePageVisibility = false;
                    scrollController.animateTo(
                      scrollController.position.minScrollExtent,
                      curve: Curves.easeOut,
                      duration: Duration(milliseconds: millSecondsScrollUp),
                    );
                  });
                },
                icon: Icon(updatesButtonState),
                color: primary,
              ),
            ],
            leading: Row(
              children: [
                Visibility(
                  visible: userProfileVisibility,
                  child: IconButton(
                    onPressed: () {
                      // Profile Page
                      setState(() {
                        searchButtonState = Ionicons.search_outline;
                        updatesButtonState = Ionicons.notifications_outline;
                        userProfileVisibility = false;
                        backVisibility = true;
                        homePageVisibility = false;
                        searchAppointmentPageVisibility = false;
                        updatesPageVisibility = false;
                        profilePageVisibility = true;
                        scrollController.animateTo(
                          scrollController.position.minScrollExtent,
                          curve: Curves.easeOut,
                          duration: Duration(milliseconds: millSecondsScrollUp),
                        );
                      });
                    },
                    icon: const Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 10, right: 10),
                          child: UserPicture(
                              size: 40, image: "assets/images/profile.jpeg"),
                        ),
                        BlackText(blackText: "Eddard", fontSize: 18),
                      ],
                    ),
                  ).animate(autoPlay: true).fadeIn(
                        duration: const Duration(milliseconds: 250),
                      ),
                ),
                Visibility(
                  visible: backVisibility,
                  child: IconButton(
                    onPressed: () {
                      // Home Page
                      setState(() {
                        searchButtonState = Ionicons.search_outline;
                        updatesButtonState = Ionicons.notifications_outline;
                        userProfileVisibility = true;
                        backVisibility = false;
                        homePageVisibility = true;
                        searchAppointmentPageVisibility = false;
                        updatesPageVisibility = false;
                        profilePageVisibility = false;
                        scrollController.animateTo(
                          scrollController.position.minScrollExtent,
                          curve: Curves.easeOut,
                          duration: Duration(milliseconds: millSecondsScrollUp),
                        );
                      });
                    },
                    icon: Row(
                      children: [
                        Icon(
                          Ionicons.chevron_back,
                          color: primary,
                          size: 30,
                        ),
                        const BlackText(blackText: "Home", fontSize: 18),
                      ],
                    ),
                  ).animate(autoPlay: true).fadeIn(
                        duration: const Duration(milliseconds: 250),
                      ),
                ),
              ],
            ),
            leadingWidth: MediaQuery.of(context).size.width,
            floating: true,
            snap: true,
            centerTitle: true,
            backgroundColor: backgroundAppColor,
          ), // App bar
        ],
        body: SingleChildScrollView(
          child: Center(
              child: Column(
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
          ) // Main app body
              ),
        ),
      ),
    );
  }
}
