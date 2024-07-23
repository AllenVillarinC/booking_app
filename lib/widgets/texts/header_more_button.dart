import 'package:booking_app/configs/imports.dart';

class HeaderAndMoreButton extends StatefulWidget {
  final String header;
  const HeaderAndMoreButton({super.key, required this.header});

  @override
  State<HeaderAndMoreButton> createState() => _HeaderAndMoreButtonState();
}

class _HeaderAndMoreButtonState extends State<HeaderAndMoreButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            widget.header,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: primary,
            ),
          ),
          Text(
            "View More",
            style: TextStyle(
              fontSize: 13,
              color: primary,
            ),
          ),
        ],
      ),
    );
  }
}
