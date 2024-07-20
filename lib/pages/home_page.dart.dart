import 'package:booking_app/configs/imports.dart';

class OpeningPage extends StatefulWidget {
  const OpeningPage({super.key});

  @override
  State<OpeningPage> createState() => _OpeningPageState();
}

class _OpeningPageState extends State<OpeningPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, innderBoxIsScrolled) => [
          // APPLICATION BAR
          const CustomAppBar(),
          // APPLICATION BAR
        ],
        body: SingleChildScrollView(
          // MAIN APP BODY
          child: Padding(
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
          ),
          // MAIN APP BODY
        ),
      ),
      // BOTTOM NAVIGATION BAR
      bottomNavigationBar: const CustomNavigationBar(),
      // BOTTOM NAVIGATION BAR
    );
  }
}
