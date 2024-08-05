import 'package:booking_app/configs/imports.dart';

// card radius variable
double cardRadius = 15;

// body page index
int pageNumber = 0;
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

bool backVisibility = false;
bool appTitleVisibility = true;

IoniconsData searchButtonState = Ionicons.search_outline;
IoniconsData updatesButtonState = Ionicons.notifications_outline;
IoniconsData homeButtonState = Ionicons.home;
IoniconsData lightModeButtonState = Ionicons.sunny;
IoniconsData darkModeButtonState = Ionicons.moon;

late ScrollController scrollController;

double fontSize = 11.5;

int avatarNumber = 0;
int avatarNameNumber = 0;
int avatarBackgroundNumber = 0;

Random random = Random();

bool lightModeActive = false;
bool darkModeActive = true;

String mode = "Light mode";
