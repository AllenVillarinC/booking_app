import 'package:booking_app/configs/imports.dart';

class AccountManagementPage extends StatefulWidget {
  const AccountManagementPage({super.key});

  @override
  State<AccountManagementPage> createState() => _AccountManagementPageState();
}

class _AccountManagementPageState extends State<AccountManagementPage> {
  double fontSize = 11.5;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 100),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: const Text(
              "Account Management",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          const CustomDivider(),
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
          const CustomDivider(),
          Text(
            "Log out",
            style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
                fontSize: fontSize),
          ),
        ],
      ),
    );
  }
}
