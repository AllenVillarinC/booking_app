import 'package:booking_app/configs/imports.dart';

class AccountSecurityPage extends StatefulWidget {
  const AccountSecurityPage({super.key});

  @override
  State<AccountSecurityPage> createState() => _AccountSecurityPageState();
}

class _AccountSecurityPageState extends State<AccountSecurityPage> {
  double fontSize = 11.5;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 100),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
        ],
      ),
    );
  }
}
