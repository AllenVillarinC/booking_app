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
          const UserPicture(size: 150, image: "assets/images/profile.jpeg"),
          const CustomDivider(),
          const BlackText(blackText: "Eddard Stark", fontSize: 20),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xff111111), // Background color
              side: const BorderSide(
                  color: Colors.white, width: 1), // White border
            ),
            onPressed: () {},
            child: Text(
              "Change avatar",
              style: TextStyle(color: primary), // Text color
            ),
          ),
          const CustomDivider(),
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: secondary,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
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
                  const CustomDivider(),
                  Align(
                    alignment: Alignment.center,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color(0xff8b0000).withOpacity(0.15),
                          side:
                              const BorderSide(color: Colors.white, width: 1)),
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 50),
                        child: Text(
                          "Log out",
                          style: TextStyle(color: primary),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
