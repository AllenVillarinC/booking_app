import 'package:booking_app/configs/imports.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 10,
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const BodyTitle(
                blackText: 'Book ',
                supportText: 'an appointment',
              ),
              const CustomDivider(),
              const Padding(
                padding: EdgeInsets.only(
                  right: 20,
                ),
                child: SearchField(),
              ),
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
              const BlackText(
                blackText: "Upcoming Appointments",
                fontSize: 16,
              ),
              const CustomDivider(),
              SizedBox(
                height: 230,
                child: ListView.builder(
                  itemCount: 5,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return const Padding(
                      padding: EdgeInsets.only(right: 5),
                      child: ScheduleCard(),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
