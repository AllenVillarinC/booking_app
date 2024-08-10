import 'package:booking_app/configs/imports.dart';

class BookingPage extends StatefulWidget {
  const BookingPage({super.key});

  @override
  State<BookingPage> createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  String selectedDate = 'August 1, 2024';
  String selectedTime = '9:00 AM';

  List<String> dates = [
    'August 1, 2024',
    'August 2, 2024',
    'August 3, 2024',
    'August 4, 2024',
    'August 5, 2024'
  ];

  List<String> times = [
    '9:00 AM',
    '10:00 AM',
    '11:00 AM',
    '12:00 PM',
    '1:00 PM',
    '2:00 PM',
    '3:00 PM',
    '4:00 PM',
    '5:00 PM'
  ];

  final _overlayController = OverlayPortalController();

  @override
  Widget build(BuildContext context) {
    double fontSize = 11.5;

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
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
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 300,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/barber_shop.jpg"),
                          fit: BoxFit.cover),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 300,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          const Color(0xff000000).withOpacity(0.9),
                          Colors.transparent
                        ],
                        stops: const [0, 1],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                      ),
                    ),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const UserPicture(
                              size: 150,
                              image: "assets/images/sample_picture.jpg"),
                          const Text(
                            "The Gentleman's Cut",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(Ionicons.location, size: 15),
                              Text(
                                "12-225 Address street",
                                style: TextStyle(
                                    fontSize: fontSize, color: Colors.white),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(right: 5),
                                child: Icon(
                                  Ionicons.star,
                                  color: Color(0xffFFCE31),
                                  size: 15,
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(right: 5),
                                child: Text(
                                  "4.7",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 5),
                                child: Text(
                                  "(180)",
                                  style: TextStyle(
                                    color: Colors.white.withOpacity(0.5),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const CustomDivider(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Service Information",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    const Text(
                        "Step into our barber shop and experience the art of men's grooming redefined with precision, style, and unparalleled service."),
                    const CustomDivider(),
                    const Text(
                      "Services",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Men's haircut"),
                        Text("\$ 30.00"),
                      ],
                    ),
                    const CustomDivider(),
                    Container(
                        color: Theme.of(context)
                            .colorScheme
                            .primary
                            .withOpacity(0.5),
                        height: 0.5),
                    const CustomDivider(),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Total"),
                        Text(
                          "\$ 30.00",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const CustomDivider(),
                    const Text(
                      "Select Date and Time",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    const CustomDivider(),
                    const CustomDivider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        DropdownButton<String>(
                          value: selectedDate,
                          items: dates.map((String date) {
                            return DropdownMenuItem<String>(
                              value: date,
                              child: Text(date),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              selectedDate = newValue!;
                            });
                          },
                        ),
                        DropdownButton<String>(
                          value: selectedTime,
                          items: times.map((String time) {
                            return DropdownMenuItem<String>(
                              value: time,
                              child: Text(time),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              selectedTime = newValue!;
                            });
                          },
                        ),
                      ],
                    ),
                    const CustomDivider(),
                    const CustomDivider(),
                    Align(
                      alignment: Alignment.center,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              Theme.of(context).colorScheme.surface,
                        ),
                        onPressed: _overlayController.toggle,
                        child: OverlayPortal(
                          controller: _overlayController,
                          overlayChildBuilder: (BuildContext context) {
                            return const BookingRequestPage();
                          },
                          child: const Text("Book Appointment"),
                        ),
                      ),
                    ),
                    const CustomDivider(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
