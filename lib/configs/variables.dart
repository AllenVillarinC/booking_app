import 'package:booking_app/configs/imports.dart';

// app theme
Color primary = const Color(0xffffffff);
Color secondary = const Color(0xff111111);
Color backgroundAppColor = const Color(0xff010101);

// card radius variable
double cardRadius = 15;

// body page index
int pageNumber = 0;
// page visibility for animation prompts
bool homePageVisibility = true;
bool searchAppointmentPageVisibility = false;
bool updatesPageVisibility = false;
bool profilePageVisibility = false;
// page transition duration
int millSecondsPage = 500;
// page scrollup duration
int millSecondsScrollUp = 700;

bool backVisibility = false;
bool userProfileVisibility = true;

IoniconsData searchButtonState = Ionicons.search_outline;
IoniconsData updatesButtonState = Ionicons.notifications_outline;
late ScrollController scrollController;

double fontSize = 11.5;