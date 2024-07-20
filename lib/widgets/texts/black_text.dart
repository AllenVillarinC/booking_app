import 'package:booking_app/configs/imports.dart';

class BlackText extends StatefulWidget {
  final String blackText;
  final double fontSize;
  const BlackText({super.key, required this.blackText, required this.fontSize});

  @override
  State<BlackText> createState() => _BlackTextState();
}

class _BlackTextState extends State<BlackText> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.blackText,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: widget.fontSize,
        color: primary,
      ),
    );
  }
}
