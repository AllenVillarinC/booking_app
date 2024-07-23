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
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const BodyTitle(
          blackText: 'Book ',
          supportText: 'an appointment',
        ),
        // const CustomDivider(),
        // const Padding(
        //   padding: EdgeInsets.only(
        //     right: 20,
        //   ),
        //   child: SearchField(),
        // ),
        const CustomDivider(),
        const HeaderAndMoreButton(
          header: "Nearby",
        ),
        const CustomDivider(),
        const ListCreator(
          card: BookingCard(),
        ),
        const HeaderAndMoreButton(
          header: "Popular",
        ),
        const CustomDivider(),
        const ListCreator(
          card: BookingCard(),
        ),
        const HeaderAndMoreButton(
          header: "Upcoming Appointments",
        ),
        const CustomDivider(),
        SizedBox(
          height: 220,
          child: ListView.builder(
            itemCount: 3,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return const Padding(
                padding: EdgeInsets.only(left: 20),
                child: ScheduleCard(),
              );
            },
          ),
        ),
      ],
    );
  }
}
