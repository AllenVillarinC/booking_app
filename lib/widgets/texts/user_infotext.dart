import 'package:booking_app/configs/imports.dart';

class UserInfotext extends StatefulWidget {
  final String label;
  final String text;
  const UserInfotext({super.key, required this.label, required this.text});

  @override
  State<UserInfotext> createState() => _UserInfotextState();
}

class _UserInfotextState extends State<UserInfotext> {
  
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
              style: TextStyle(color: primary, fontSize: fontSize),
            ),
            Text(
              widget.text,
              style: TextStyle(color: primary, fontSize: fontSize),
            )
          ],
        ),
      ],
    );
  }
}
