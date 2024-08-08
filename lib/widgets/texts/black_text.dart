import 'package:booking_app/configs/imports.dart';

class BlackText extends StatefulWidget {
  final String blackText;

  const BlackText({super.key, required this.blackText});

  @override
  State<BlackText> createState() => _BlackTextState();
}

class _BlackTextState extends State<BlackText> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.blackText,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20,
      ),
    );
  }
}
