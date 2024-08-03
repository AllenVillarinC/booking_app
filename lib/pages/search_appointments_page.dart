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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const BodyTitle(
          blackText: "Search ",
          supportText: "an appointment",
        ),
        const CustomDivider(),
        const Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: SearchField(),
        ),
        const CustomDivider(),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: BlackText(
            blackText: "Search results",
            fontSize: 16,
          ),
        ),
        const CustomDivider(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SizedBox(
              child: ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 5,
            itemBuilder: (context, index) {
              return const Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: ScheduleoriginalCard(),
              );
            },
          )),
        ),
      ],
    );
  }
}
