import 'package:booking_app/configs/imports.dart';

class UpdatesPage extends StatefulWidget {
  const UpdatesPage({super.key});

  @override
  State<UpdatesPage> createState() => _UpdatesPageState();
}

class _UpdatesPageState extends State<UpdatesPage> {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(
        top: 10,
      ),
      child: Center(
        child: Padding(
          padding: EdgeInsets.only(
            left: 20,
          ),
          child: Column(
            children: [
              BodyTitle(blackText: "Updates,", supportText: " from the team")
            ],
          ),
        ),
      ),
    );
  }
}
