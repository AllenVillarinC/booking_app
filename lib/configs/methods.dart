import 'package:booking_app/configs/imports.dart';

ThemeData lightMode = ThemeData(
  fontFamily: "Montserrat",
  brightness: Brightness.light,
  colorScheme: const ColorScheme.light(
    surface: Color(0xffeeeeee),
    primary: Color(0xff000000),
    secondary: Color(0xfffefefa),
    tertiary: Color(0xfff8f8ff),
  ),
);

ThemeData darkMode = ThemeData(
  fontFamily: "Montserrat",
  brightness: Brightness.dark,
  colorScheme: const ColorScheme.dark(
    surface: Color(0xff111111),
    primary: Color(0xffffffff),
    secondary: Color(0xff2a282b),
    tertiary: Color(0xff1c1c1c),
  ),
);
