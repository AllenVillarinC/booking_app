import 'package:booking_app/configs/imports.dart';
import 'package:booking_app/pages/cancel_request.dart';

class BookingDetailsPage extends StatefulWidget {
  const BookingDetailsPage({super.key});

  @override
  State<BookingDetailsPage> createState() => _BookingDetailsPageState();
}

class _BookingDetailsPageState extends State<BookingDetailsPage> {
  double fontSize = 11.5;
  final _overlayController = OverlayPortalController();

  @override
  Widget build(BuildContext context) {
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
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Ionicons.checkmark_circle,
                          color: Colors.green,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Confirmed",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    const CustomDivider(),
                    const CustomDivider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 10,
                          width: MediaQuery.of(context).size.width * 0.4,
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(5)),
                        ),
                        Container(
                          height: 10,
                          width: MediaQuery.of(context).size.width * 0.4,
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(5)),
                        ),
                      ],
                    ),
                    const CustomDivider(),
                    const CustomDivider(),
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
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Text("August 1, 2024"), Text("9:00 AM")],
                    ),
                    const CustomDivider(),
                    const CustomDivider(),
                    Align(
                      alignment: Alignment.center,
                      child: TextButton(
                        onPressed: _overlayController.toggle,
                        child: OverlayPortal(
                          controller: _overlayController,
                          overlayChildBuilder: (BuildContext context) {
                            return const CancelRequestPage();
                          },
                          child: const Text(
                            "Cancel Appointment",
                            style: TextStyle(color: Colors.red),
                          ),
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
