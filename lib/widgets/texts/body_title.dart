import 'package:booking_app/configs/imports.dart';

class BodyTitle extends StatefulWidget {
  final String blackText;
  final String supportText;
  const BodyTitle(
      {super.key, required this.blackText, required this.supportText});

  @override
  State<BodyTitle> createState() => _BodyTitleState();
}

class _BodyTitleState extends State<BodyTitle> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.blackText,
          style:  TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w700,
            color: primary,
          ),
        ),
        Text(
          widget.supportText,
          style: TextStyle(
            fontSize: 25,
            color: primary.withOpacity(0.5),
          ),
        ),
      ],
    );
  }
}
