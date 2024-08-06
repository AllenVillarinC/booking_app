import 'package:booking_app/configs/imports.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
            padding: EdgeInsets.only(left: 20),
            child:
                BodyTitle(blackText: 'Book ', supportText: 'an appointment')),
        const HeaderAndMoreButton(header: "Nearby"),
        const ListCreator(card: BookingCard()),
        const HeaderAndMoreButton(header: "Popular"),
        const ListCreator(card: BookingCard()),
        const HeaderAndMoreButton(header: "Upcoming Appointments"),
        SizedBox(
          height: 230,
          child: ListView.builder(
            itemCount: 3,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return const Padding(
                  padding: EdgeInsets.only(left: 20), child: ScheduleCard());
            },
          ),
        ),
      ],
    );
  }
}
