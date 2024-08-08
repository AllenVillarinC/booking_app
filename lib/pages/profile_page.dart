import 'package:booking_app/configs/imports.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int avatarNumber = 0;
  int avatarNameNumber = 0;
  int avatarBackgroundNumber = 0;
  Random random = Random();

  double fontSize = 11.5;
  double imageWidthHeight = 120;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomDivider(),
        SizedBox(
          width: imageWidthHeight,
          height: imageWidthHeight,
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(imageWidthHeight / 2),
                color: Color(backgroundColors[avatarBackgroundNumber])
                    .withOpacity(0.5)),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(imageWidthHeight / 2),
              child: Image.asset(
                "assets/images/avatars/${avatars[avatarNumber]}.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        const CustomDivider(),
        BlackText(blackText: funNames[avatarNameNumber]),
        const CustomDivider(),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Theme.of(context).colorScheme.surface,
          ),
          onPressed: () {
            setState(() {
              avatarNumber = random.nextInt(avatars.length);
              avatarBackgroundNumber = random.nextInt(backgroundColors.length);
              avatarNameNumber = random.nextInt(funNames.length);
              Vibration.vibrate(pattern: [20, 100, 20, 100]);
            });
          },
          child: const Text(
            "Change avatar",
          ),
        ),
        const CustomDivider(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Account Information",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const UserInfotext(
                label: "User ID number",
                text: "#AB-123456-24",
                icon: Ionicons.copy_outline,
              ),
              const CustomDivider(),
              const UserInfotext(
                label: "Email",
                text: "projectinfinity2252@gmail.com",
                icon: Ionicons.chevron_forward_outline,
              ),
              const CustomDivider(),
              const UserInfotext(
                label: "Phone number",
                text: "+12041232252",
                icon: Ionicons.chevron_forward_outline,
              ),
              const CustomDivider(),
              const Text(
                "Account Security",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const UserInfotext(
                label: "Password",
                text: "****************",
                icon: Ionicons.chevron_forward_outline,
              ),
              const CustomDivider(),
              const CustomDivider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "2-factor authentication",
                    style: TextStyle(fontSize: fontSize),
                  ),
                  Row(
                    children: [
                      Text(
                        "Active",
                        style: TextStyle(
                            color: Colors.green,
                            fontSize: fontSize,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(width: 5),
                      const Icon(
                        Ionicons.chevron_forward_outline,
                        size: 10,
                      )
                    ],
                  )
                ],
              ),
              const CustomDivider(),
              const CustomDivider(),
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
                                    colors: [
                                      Color(0xff2774ae),
                                      Color(0xff002e5d),
                                      Color(0xff002e5d)
                                    ],
                                    stops: [0, 0.5, 1],
                                    begin: Alignment.topRight,
                                    end: Alignment.bottomLeft,
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
                                    colors: [
                                      Color(0xff076585),
                                      Color(0xffffffff)
                                    ],
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
                                    Vibration.vibrate(
                                        pattern: [20, 10, 50, 30]);
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
              const CustomDivider(),
              const Text(
                "Account Management",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const CustomDivider(),
              Text(
                "Disable account",
                style: TextStyle(fontSize: fontSize),
              ),
              const CustomDivider(),
              const CustomDivider(),
              Text(
                "Delete account",
                style: TextStyle(color: Colors.red, fontSize: fontSize),
              ),
              const CustomDivider(),
              Align(
                alignment: Alignment.center,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Log out",
                    style:
                        TextStyle(color: Theme.of(context).colorScheme.primary),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
