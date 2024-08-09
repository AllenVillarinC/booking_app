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
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          "REAZY",
          style: TextStyle(
              fontSize: 25,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
              color: Colors.white),
        ),
        actions: [
          IconButton(
            onPressed: () {
              showModalBottomSheet(
                showDragHandle: true,
                context: context,
                builder: (BuildContext context) {
                  return const SizedBox(child: UpdatesPage());
                },
              );
            },
            icon: Icon(
              notificationIcon,
              color: Colors.white,
            ),
          ),
        ],
        backgroundColor: Theme.of(context).colorScheme.surface,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Theme.of(context).colorScheme.secondary,
                Theme.of(context).colorScheme.tertiary
              ],
              stops: const [0, 1],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomDivider(),
            const BodyTitle(
              blackText: "Search ",
              supportText: "services",
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
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
        ),
      ),
    );
  }
}
