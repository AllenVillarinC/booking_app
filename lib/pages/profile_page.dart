import 'package:booking_app/configs/imports.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const CustomDivider(),
          UserPicture(
            size: 120,
            image: "assets/images/avatars/${avatars[avatarNumber]}.png",
          ),
          const CustomDivider(),
          BlackText(blackText: funNames[avatarNameNumber], fontSize: 20),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Theme.of(context).colorScheme.secondary,
            ),
            onPressed: () {
              setState(() {
                avatarNumber = random.nextInt(avatars.length);
                avatarBackgroundNumber =
                    random.nextInt(backgroundColors.length);
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
                const CustomDivider(),
                const BlackText(
                    blackText: "Account Information:", fontSize: 15),
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
                const BlackText(blackText: "Account Security:", fontSize: 15),
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
                      "2-factor authenticator",
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
                const BlackText(
                    blackText: "Application Preference:", fontSize: 15),
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
                                    borderRadius:
                                        BorderRadius.circular(33 / 2)),
                                child: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      mode = "Light mode";
                                      Provider.of<ThemeProvider>(context,
                                              listen: false)
                                          .toggleTheme();
                                      darkModeActive = false;
                                      lightModeActive = true;
                                      Vibration.vibrate(pattern: [
                                        20,
                                        30,
                                        20,
                                        30,
                                        20,
                                        30,
                                        20,
                                        30
                                      ]);
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
                                    borderRadius:
                                        BorderRadius.circular(33 / 2)),
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
                const BlackText(blackText: "Account Management:", fontSize: 15),
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
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.primary),
                    ),
                  ),
                ),
                const CustomDivider(),
                const CustomDivider(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
