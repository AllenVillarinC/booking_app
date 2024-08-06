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
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.header,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                "View More",
                style: TextStyle(
                  fontSize: 13,
                ),
              ),
            ],
          ),
        ),
        const CustomDivider(),
      ],
    );
  }
}
