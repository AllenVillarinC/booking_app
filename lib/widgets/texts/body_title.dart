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
    return Column(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Wrap(
            crossAxisAlignment: WrapCrossAlignment.start,
            children: [
              Text(
                widget.blackText,
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                widget.supportText,
                style: const TextStyle(
                  fontSize: 25,
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
