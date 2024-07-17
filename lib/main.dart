import 'package:flutter/material.dart';

import 'pages/opening_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: const Color(0xff000000),
          fontFamily: "Roboto"),
      home: const OpeningPage(),
    );
  }
}
