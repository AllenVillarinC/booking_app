import 'package:booking_app/configs/imports.dart';

class BookingCard extends StatefulWidget {
  const BookingCard({super.key});

  @override
  State<BookingCard> createState() => _BookingCardState();
}

class _BookingCardState extends State<BookingCard> {
  Random random = Random();

  @override
  Widget build(BuildContext context) {
    int randomNumber = random.nextInt(cardColorsDark.length);
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 100,
              width: MediaQuery.of(context).size.width * 0.8,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/barber_shop.jpg"),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
              ),
            ),
            Container(
              height: 100,
              width: MediaQuery.of(context).size.width * 0.8,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    const Color(0xff000000).withOpacity(0.8),
                    Colors.transparent
                  ],
                  stops: const [0, 1],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    // Reviews
                    Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(right: 5),
                          child: Icon(
                            Ionicons.star,
                            color: Color(0xffFFCE31),
                            size: 15,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 5),
                          child: Text(
                            "4.7",
                            style: TextStyle(
                                color: primary, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 5),
                          child: Text(
                            "(180)",
                            style: TextStyle(
                              color: primary.withOpacity(0.5),
                            ),
                          ),
                        ),
                      ],
                    ),
                    // Location
                     Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 5),
                          child: Icon(
                            Ionicons.location,
                            color: primary,
                            size: 15,
                          ),
                        ),
                        Text(
                          "0.3 km",
                          style: TextStyle(
                            color: primary,
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
        Container(
          height: 70,
          width: MediaQuery.of(context).size.width * 0.8,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(15),
              bottomRight: Radius.circular(15),
            ),
            color: Color(cardColorsDark[randomNumber]).withOpacity(0.5),
            // color: Color(0xff111111),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 5),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 5),
                        child: Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: primary,
                            ),
                            borderRadius: BorderRadius.circular(15),
                            color: const Color(0xff000000),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              "assets/images/sample_picture.jpg",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                       Text(
                        "The Gentleman's Cut",
                        style: TextStyle(
                          color: primary,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 100,
                  height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      width: 1,
                      color: primary.withOpacity(0.5),
                    ),
                  ),
                  child:  Center(
                    child: Text(
                      "Book Now",
                      style: TextStyle(
                        color: primary,
                        fontSize: 13,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
