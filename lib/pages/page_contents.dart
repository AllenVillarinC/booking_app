import 'package:booking_app/configs/imports.dart';

class PageContents extends StatefulWidget {
  const PageContents({super.key});

  @override
  State<PageContents> createState() => _PageContentsState();
}

class _PageContentsState extends State<PageContents> {
  @override
  Widget build(BuildContext context) {
    return Center(
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
      ),
    );
  }
}
