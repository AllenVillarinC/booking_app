import 'package:booking_app/configs/imports.dart';
import 'package:intl/intl.dart';

class AppointmentsPage extends StatefulWidget {
  const AppointmentsPage({super.key});

  @override
  State<AppointmentsPage> createState() => _AppointmentsPageState();
}

class _AppointmentsPageState extends State<AppointmentsPage> {
  DateTime now = DateTime.now();
  String dayName = DateFormat.EEEE().format(DateTime.now());
  String currentDate = DateFormat.yMMMd().format(DateTime.now());

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
              BodyTitle(
                blackText: "$dayName, ",
                supportText: currentDate,
              ),
              const CustomDivider(),
              const Padding(
                padding: EdgeInsets.only(
                  right: 20,
                ),
                child: SearchField(),
              ),
              const CustomDivider(),
              const BlackText(
                blackText: "Upcoming Appointments",
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
                    itemCount: 5,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      return const Padding(
                        padding: EdgeInsets.only(bottom: 5, right: 20),
                        child: ScheduleoriginalCard(),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
