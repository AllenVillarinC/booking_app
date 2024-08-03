import 'package:booking_app/configs/imports.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: RadialGradient(
          colors: [Color(houseColors[avatarNumber]), secondary],
          stops: const [0, 1],
          center: Alignment.topCenter,
        ),
      ),
      child: Center(
        child: Column(
          children: [
            const CustomDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 60,
                  width: 60,
                  child: Image.asset(
                      "assets/images/avatars/avatarhouses/${houseImage[avatarNumber]}"),
                ),
                UserPicture(
                    size: 120,
                    image:
                        "assets/images/avatars/${avatarImage[avatarNumber]}"),
                SizedBox(
                  height: 60,
                  width: 60,
                  child: Image.asset(
                      "assets/images/avatars/avatarhouses/${houseImage[avatarNumber]}"),
                ),
              ],
            ),
            const CustomDivider(),
            BlackText(blackText: avatars[avatarNumber], fontSize: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: secondary,
                side: const BorderSide(color: Colors.white, width: 1),
              ),
              onPressed: () {
                setState(() {
                  avatarNumber = random.nextInt(avatars.length);
                });
              },
              child: Text(
                "Change avatar",
                style: TextStyle(color: primary),
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
                      label: "User ID number", text: "#AB-123456-24"),
                  const CustomDivider(),
                  const UserInfotext(
                      label: "Email", text: "projectinfinity2252@gmail.com"),
                  const CustomDivider(),
                  const UserInfotext(
                      label: "Phone number", text: "+12041232252"),
                  const CustomDivider(),
                  const BlackText(blackText: "Account Security:", fontSize: 15),
                  const UserInfotext(
                      label: "Password", text: "****************"),
                  const CustomDivider(),
                  const CustomDivider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "2-factor authenticator",
                        style: TextStyle(color: primary, fontSize: fontSize),
                      ),
                      Text(
                        "Active",
                        style:
                            TextStyle(color: Colors.green, fontSize: fontSize),
                      ),
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
                        "Dark mode",
                        style: TextStyle(color: primary, fontSize: fontSize),
                      ),
                      Text(
                        "switch",
                        style: TextStyle(color: primary),
                      ),
                    ],
                  ),
                  const CustomDivider(),
                  const BlackText(
                      blackText: "Account Management:", fontSize: 15),
                  const CustomDivider(),
                  Text(
                    "Disable account",
                    style: TextStyle(color: primary, fontSize: fontSize),
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
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff111111),
                        side: const BorderSide(color: Colors.white, width: 1),
                      ),
                      onPressed: () {},
                      child: Text(
                        "Log out",
                        style: TextStyle(color: primary),
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
      ),
    );
  }
}
