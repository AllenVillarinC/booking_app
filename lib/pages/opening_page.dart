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

  void itemNumber(int value) {
    setState(
      () {
        pageNumber = value;
        if (pageNumber == 1) {
          searchButtonState = Ionicons.search;
          updatesButtonState = Ionicons.notifications_outline;
          userProfileVisibility = false;
          backVisibility = true;
        } else if (pageNumber == 2) {
          searchButtonState = Ionicons.search_outline;
          updatesButtonState = Ionicons.notifications;
          userProfileVisibility = false;
          backVisibility = true;
        } else if (pageNumber == 3) {
          searchButtonState = Ionicons.search_outline;
          updatesButtonState = Ionicons.notifications_outline;
          userProfileVisibility = false;
          backVisibility = true;
        } else {
          searchButtonState = Ionicons.search_outline;
          updatesButtonState = Ionicons.notifications_outline;
          userProfileVisibility = true;
          backVisibility = false;
        }
        scrollController.animateTo(
          scrollController.position.minScrollExtent,
          curve: Curves.easeOut,
          duration: const Duration(milliseconds: 700),
        );
      },
    );
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
                  itemNumber(1);
                },
                icon: Icon(searchButtonState),
                color: primary,
              ),
              IconButton(
                onPressed: () {
                  itemNumber(2);
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
                      itemNumber(3);
                    },
                    icon: const Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 10, right: 10),
                          child: UserPicture(
                              size: 35, image: "assets/images/profile.jpeg"),
                        ),
                        BlackText(blackText: "Eddard Stark", fontSize: 18),
                      ],
                    ),
                  ),
                ),
                Visibility(
                  visible: backVisibility,
                  child: IconButton(
                    onPressed: () {
                      itemNumber(0);
                    },
                    icon: Row(
                      children: [
                        Icon(
                          Ionicons.chevron_back,
                          color: primary,
                        ),
                        const BlackText(blackText: "Back", fontSize: 18),
                      ],
                    ),
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
            child: body.elementAt(pageNumber), // Main app body
          ),
        ),
      ),
    );
  }
}
