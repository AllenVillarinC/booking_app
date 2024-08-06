import 'package:booking_app/configs/imports.dart';

// card radius variable
double cardRadius = 15;

// page visibility for animation prompts
bool homePageVisibility = true;
bool searchAppointmentPageVisibility = false;
bool updatesPageVisibility = false;
bool profilePageVisibility = false;
bool profileIconVisibility = true;

// page transition duration
int millSecondsPage = 250;

// page scrollup duration
int millSecondsScrollUp = 500;

IoniconsData searchButtonState = Ionicons.search_outline;
IoniconsData updatesButtonState = Ionicons.notifications_outline;
IoniconsData homeButtonState = Ionicons.home;

late ScrollController scrollController;

double fontSize = 11.5;

int avatarNumber = 0;
int avatarNameNumber = 0;
int avatarBackgroundNumber = 0;

Random random = Random();

bool lightModeActive = false;
bool darkModeActive = true;

String mode = "Dark mode";

double navIconSize = 20;
