import 'package:booking_app/configs/imports.dart';

class UserInfotext extends StatefulWidget {
  final String label;
  final String text;
  final IoniconsData icon;
  const UserInfotext(
      {super.key, required this.label, required this.text, required this.icon});

  @override
  State<UserInfotext> createState() => _UserInfotextState();
}

class _UserInfotextState extends State<UserInfotext> {
  double fontSize = 11.5;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomDivider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              widget.label,
              style: TextStyle(fontSize: fontSize),
            ),
            Row(
              children: [
                Text(
                  widget.text,
                  style: TextStyle(fontSize: fontSize),
                ),
                const SizedBox(width: 5),
                Icon(
                  widget.icon,
                  size: 10,
                )
              ],
            )
          ],
        ),
      ],
    );
  }
}
