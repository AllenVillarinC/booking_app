import 'package:booking_app/configs/imports.dart';

class AccountInformationPage extends StatefulWidget {
  const AccountInformationPage({super.key});

  @override
  State<AccountInformationPage> createState() => _AccountInformationPageState();
}

class _AccountInformationPageState extends State<AccountInformationPage> {
  double imageWidthHeight = 120;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Column(
                children: [
                  SizedBox(
                    width: imageWidthHeight,
                    height: imageWidthHeight,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(imageWidthHeight / 2),
                        color: Color(backgroundColors[avatarBackgroundNumber])
                            .withOpacity(0.5),
                      ),
                      child: ClipRRect(
                        borderRadius:
                            BorderRadius.circular(imageWidthHeight / 2),
                        child: Image.asset(
                          "assets/images/avatars/${avatars[avatarNumber]}.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  const CustomDivider(),
                  const CustomDivider(),
                  const CustomDivider(),
                  BlackText(blackText: funNames[avatarNameNumber]),
                  const CustomDivider(),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      side: BorderSide(
                          color: Theme.of(context).colorScheme.primary,
                          width: 0.1),
                      backgroundColor: Theme.of(context).colorScheme.surface,
                      elevation: 3,
                    ),
                    onPressed: () {
                      setState(() {
                        avatarNumber = random.nextInt(avatars.length);
                        avatarBackgroundNumber =
                            random.nextInt(backgroundColors.length);
                        avatarNameNumber = random.nextInt(funNames.length);
                      });
                    },
                    child: const Text(
                      "Change avatar",
                    ),
                  ),
                ],
              ),
            ),
            const CustomDivider(),
            const CustomDivider(),
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
            const SizedBox(height: 150)
          ],
        ),
      ),
    );
  }
}
