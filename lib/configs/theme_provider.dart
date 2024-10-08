import 'package:booking_app/configs/imports.dart';

bool lightModeActive = true;
bool darkModeActive = false;
String mode = "Light mode";

ThemeData lightMode = ThemeData(
  fontFamily: "Montserrat",
  brightness: Brightness.light,
  colorScheme: const ColorScheme.light(
    surface: Color(0xfff8f8ff),
    primary: Color(0xff000000),
    secondary: Color(0xff076585),
    tertiary: Color(0xff061161),
  ),
);

ThemeData darkMode = ThemeData(
  fontFamily: "Montserrat",
  brightness: Brightness.dark,
  colorScheme: const ColorScheme.dark(
    surface: Color(0xff111111),
    primary: Color(0xffffffff),
    secondary: Color(0xff780206),
    tertiary: Color(0xff061161),
  ),
);

class ThemeProvider with ChangeNotifier {
  ThemeData _themeData = lightMode;

  ThemeData get themeData => _themeData;

  set themeData(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners();
  }

  void toggleTheme() {
    if (_themeData == lightMode) {
      themeData = darkMode;
    } else {
      themeData = lightMode;
    }
  }
}
