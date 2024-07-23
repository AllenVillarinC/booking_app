import 'package:booking_app/configs/imports.dart';

class ListCreator extends StatefulWidget {
  final Widget card;
  const ListCreator({super.key, required this.card});

  @override
  State<ListCreator> createState() => _ListCreatorState();
}

class _ListCreatorState extends State<ListCreator> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: ListView.builder(
        itemCount: 3,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 20),
            child: widget.card,
          );
        },
      ),
    );
  }
}
