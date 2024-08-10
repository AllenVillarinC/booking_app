import 'package:booking_app/configs/imports.dart';

class Barbers extends StatefulWidget {
  const Barbers({super.key});

  @override
  State<Barbers> createState() => _BarbersState();
}

class _BarbersState extends State<Barbers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        // ACTION BUTTONS
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const SearchAppointmentsPage()),
              );
            },
            icon: const Icon(
              Ionicons.search,
            ),
          ),
          IconButton(
            onPressed: () {
              showModalBottomSheet(
                  showDragHandle: true,
                  context: context,
                  builder: (BuildContext context) {
                    return const SizedBox(child: UpdatesPage());
                  });
            },
            icon: const Icon(
              Ionicons.notifications,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const CustomDivider(),
            const BodyTitle(blackText: "Barber ", supportText: "services"),
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
        ),
      ),
    );
  }
}