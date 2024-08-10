import 'package:booking_app/configs/imports.dart';

class AppPreferencePage extends StatefulWidget {
  const AppPreferencePage({super.key});

  @override
  State<AppPreferencePage> createState() => _AppPreferencePageState();
}

class _AppPreferencePageState extends State<AppPreferencePage> {
  double fontSize = 11.5;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 100),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Application preference",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const CustomDivider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "App Theme",
                style: TextStyle(fontSize: fontSize),
              ),
              Row(
                children: [
                  Text(
                    mode,
                    style: TextStyle(fontSize: fontSize),
                  ),
                  const SizedBox(width: 5),
                  Stack(
                    children: [
                      Visibility(
                        visible: darkModeActive,
                        child: Container(
                          height: 33,
                          width: 33,
                          decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                colors: [Color(0xff780206), Color(0xff061161)],
                                stops: [0, 1],
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                              ),
                              borderRadius: BorderRadius.circular(33 / 2)),
                          child: IconButton(
                            onPressed: () {
                              setState(() {
                                mode = "Light mode";
                                Provider.of<ThemeProvider>(context,
                                        listen: false)
                                    .toggleTheme();
                                darkModeActive = false;
                                lightModeActive = true;
                              });
                            },
                            icon: const Icon(
                              Ionicons.moon,
                              color: Colors.yellowAccent,
                              size: 15,
                            ),
                          ),
                        ).animate().fadeIn(),
                      ),
                      Visibility(
                        visible: lightModeActive,
                        child: Container(
                          height: 33,
                          width: 33,
                          decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                colors: [Color(0xff076585), Color(0xffffffff)],
                                stops: [0, 1],
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                              ),
                              borderRadius: BorderRadius.circular(33 / 2)),
                          child: IconButton(
                            onPressed: () {
                              setState(() {
                                mode = "Dark mode";
                                Provider.of<ThemeProvider>(context,
                                        listen: false)
                                    .toggleTheme();
                                darkModeActive = true;
                                lightModeActive = false;
                              });
                            },
                            icon: const Icon(
                              Ionicons.sunny,
                              color: Colors.yellow,
                              size: 15,
                            ),
                          ),
                        ).animate().fadeIn(),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
