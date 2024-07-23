import 'package:booking_app/configs/imports.dart';

class UpdatesPage extends StatefulWidget {
  const UpdatesPage({super.key});

  @override
  State<UpdatesPage> createState() => _UpdatesPageState();
}

class _UpdatesPageState extends State<UpdatesPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const BodyTitle(blackText: "Updates ", supportText: "from the team"),
        const CustomDivider(),
        // make a listview builder
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const BlackText(
                  blackText: "July 15, 2024 - Ongoing", fontSize: 16),
              const CustomDivider(),
              SizedBox(
                height: 40,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: [
                    Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(right: 10),
                          child: UserPicture(
                              size: 40,
                              image: "assets/images/dev_picture.jpeg"),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const BlackText(
                                blackText: "The BuzzUp developer",
                                fontSize: 12),
                            Text(
                              "Application is still in development",
                              style: TextStyle(color: primary, fontSize: 12),
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
