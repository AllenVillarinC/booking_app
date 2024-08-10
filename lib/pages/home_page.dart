import 'package:booking_app/configs/imports.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> categories = [
    SizedBox(
        height: 90,
        width: 90,
        child: Lottie.asset("assets/lottie/barber-chair.json", repeat: false)),
    SizedBox(
        height: 90,
        width: 90,
        child: Lottie.asset("assets/lottie/salon-chair.json", repeat: false)),
    SizedBox(
        height: 70,
        width: 90,
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Lottie.asset("assets/lottie/nail-polish.json", repeat: false),
        )),
    SizedBox(
        height: 90,
        width: 90,
        child:
            Lottie.asset("assets/lottie/pedicure-trolley.json", repeat: false)),
    SizedBox(
        height: 75,
        width: 90,
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Lottie.asset("assets/lottie/spa-tools.json", repeat: false),
        )),
  ];

  List<Widget> categoryName = [
    const Text(
      "Barber",
      style: TextStyle(fontSize: 11.5),
    ),
    const Text(
      "Salon",
      style: TextStyle(fontSize: 11.5),
    ),
    const Text(
      "Manicure",
      style: TextStyle(fontSize: 11.5),
    ),
    const Text(
      "Pedicure",
      style: TextStyle(fontSize: 11.5),
    ),
    const Text(
      "Spa",
      style: TextStyle(fontSize: 11.5),
    ),
  ];

  List<Widget> categoryPage = [
    const Barbers(),
    const Salons(),
    const Manicures(),
    const Pedicures(),
    const Spas(),
  ];

  void navigateToCategory(int index) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => categoryPage[index],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomDivider(),
        const BodyTitle(blackText: 'Book ', supportText: 'an appointment'),
        const Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            "Services",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 110,
          child: ListView.builder(
            itemCount: categories.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(right: 5),
                child: GestureDetector(
                  onTap: () {
                    navigateToCategory(index);
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [categories[index], categoryName[index]],
                  ),
                ),
              );
            },
          ),
        ),
        const CustomDivider(),
        const HeaderAndMoreButton(header: "Recently viewed"),
        const ListCreator(card: BookingCard()),
        const HeaderAndMoreButton(header: "Nearby services"),
        const ListCreator(card: BookingCard()),
        const HeaderAndMoreButton(header: "Popular services"),
        const ListCreator(card: BookingCard()),
      ],
    );
  }
}
