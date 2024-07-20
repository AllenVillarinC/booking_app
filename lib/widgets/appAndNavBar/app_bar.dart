import 'package:booking_app/configs/imports.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({super.key});

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      actions:  [
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Icon(
            Ionicons.settings_outline,
            color: primary,
          ),
        )
      ],
      leading:  Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 5),
            child: Icon(
              Ionicons.logo_github,
              size: 30,
              color: primary,
            ),
          ),
          const BlackText(blackText: "BuzzUp", fontSize: 18)
        ],
      ),
      leadingWidth: MediaQuery.of(context).size.width,
      floating: true,
      snap: true,
      centerTitle: true,
      backgroundColor: secondary,
    );
  }
}
