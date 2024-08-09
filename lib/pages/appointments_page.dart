import 'package:booking_app/configs/imports.dart';

class AppointmentsPage extends StatefulWidget {
  const AppointmentsPage({super.key});

  @override
  State<AppointmentsPage> createState() => _AppointmentsPageState();
}

class _AppointmentsPageState extends State<AppointmentsPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomDivider(),
        const BodyTitle(blackText: "Upcoming ", supportText: "appointments"),
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
                  child: ScheduleoriginalCard(),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
