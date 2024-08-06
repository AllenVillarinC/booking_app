import 'package:booking_app/configs/imports.dart';
import 'package:intl/intl.dart';

class SearchAppointmentsPage extends StatefulWidget {
  const SearchAppointmentsPage({super.key});

  @override
  State<SearchAppointmentsPage> createState() => _SearchAppointmentsPageState();
}

class _SearchAppointmentsPageState extends State<SearchAppointmentsPage> {
  DateTime now = DateTime.now();
  String dayName = DateFormat.EEEE().format(DateTime.now());
  String currentDate = DateFormat.yMMMd().format(DateTime.now());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const BodyTitle(
            blackText: "Search ",
            supportText: "an appointment",
          ),
          const SearchField(),
          const BlackText(
            blackText: "Search results",
            fontSize: 16,
          ),
          const CustomDivider(),
          SizedBox(
            child: MediaQuery.removePadding(
              context: context,
              removeTop: true,
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 3,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return const Padding(
                    padding: EdgeInsets.only(bottom: 10),
                    child: ScheduleoriginalCard(),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
