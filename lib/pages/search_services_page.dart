import 'package:booking_app/configs/imports.dart';
import 'package:booking_app/widgets/cards/search_result_card.dart';
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
          supportText: "services",
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SearchField(),
              const BlackText(
                blackText: "Search results",
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
                      return const SearchResultCard();
                    },
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
