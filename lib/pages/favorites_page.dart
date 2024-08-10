import 'package:booking_app/configs/imports.dart';


class FavoritesPage extends StatefulWidget {
  const FavoritesPage({super.key});

  @override
  State<FavoritesPage> createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomDivider(),
        const BodyTitle(blackText: "Favorite ", supportText: "services"),
        SizedBox(
          child: MediaQuery.removePadding(
            context: context,
            removeTop: true,
            child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 5,
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                return const Padding(
                  padding: EdgeInsets.only(bottom: 10, left: 20, right: 20),
                  child: BookingOriginalCard(),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
