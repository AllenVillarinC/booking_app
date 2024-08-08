import 'package:booking_app/configs/imports.dart';
import 'package:booking_app/widgets/cards/update_cards.dart';

class UpdatesPage extends StatefulWidget {
  const UpdatesPage({super.key});

  @override
  State<UpdatesPage> createState() => _UpdatesPageState();
}

class _UpdatesPageState extends State<UpdatesPage> {
  @override
  Widget build(BuildContext context) {
    return
        // make a listview builder
        const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BodyTitle(blackText: "Updates ", supportText: ""),
        UpdateCards(
          userPicture: "assets/images/sample_picture.jpg",
          serviceName: "The Gentleman's Cut",
          cardMessage: "Booking request confirmed",
          date: '07 / 04 / 24',
          time: '11:00 AM',
        ),
        UpdateCards(
          userPicture: "assets/images/sample_picture.jpg",
          serviceName: "The Gentleman's Cut",
          cardMessage: "Booking request sent",
          date: '07 / 04 / 24',
          time: '10:00 AM',
        ),
        UpdateCards(
          userPicture: "assets/images/dev_picture.jpeg",
          serviceName: "The BuzzUp Developer",
          cardMessage: "Application in development",
          date: '06 / 15 / 24',
          time: '9:00 AM',
        ),
      ],
    );
  }
}
