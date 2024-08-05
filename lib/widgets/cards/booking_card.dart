import 'package:booking_app/configs/imports.dart';

class BookingCard extends StatefulWidget {
  const BookingCard({super.key});

  @override
  State<BookingCard> createState() => _BookingCardState();
}

class _BookingCardState extends State<BookingCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 100,
              width: MediaQuery.of(context).size.width * 0.8,
              decoration: BoxDecoration(
                image: const DecorationImage(
                    image: AssetImage("assets/images/barber_shop.jpg"),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(cardRadius),
                  topRight: Radius.circular(cardRadius),
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
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(cardRadius),
                  topRight: Radius.circular(cardRadius),
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
                        const Padding(
                          padding: EdgeInsets.only(right: 5),
                          child: Text(
                            "4.7",
                            style: TextStyle(
                                color: Colors.white, fontWeight: FontWeight.bold),
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
                    // Location
                    const Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 5),
                          child: Icon(
                            Ionicons.location,
                            color: Colors.white,
                            size: 15,
                          ),
                        ),
                        Text(
                          "0.3 km",
                          style: TextStyle(
                            color: Colors.white,
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
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(cardRadius),
              bottomRight: Radius.circular(cardRadius),
            ),
            color: Theme.of(context).colorScheme.tertiary,
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
                      const Padding(
                        padding: EdgeInsets.only(right: 5),
                        child: UserPicture(
                          size: 30,
                          image: "assets/images/sample_picture.jpg",
                        ),
                      ),
                      SizedBox(
                        width: 120,
                        child: Text(
                          "The Gentleman's Cut",
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.primary,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Theme.of(context).colorScheme.secondary,
                    ),
                    onPressed: () {},
                    child: const Text(
                      "Book Now",
                      style: TextStyle(
                        fontSize: 10,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
