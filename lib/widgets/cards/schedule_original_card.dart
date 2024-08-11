import 'package:booking_app/configs/imports.dart';
import 'package:booking_app/pages/booking_details_page.dart';

class ScheduleoriginalCard extends StatefulWidget {
  const ScheduleoriginalCard({super.key});

  @override
  State<ScheduleoriginalCard> createState() => _ScheduleoriginalCardState();
}

class _ScheduleoriginalCardState extends State<ScheduleoriginalCard> {
  double cardRadius = 15;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const BookingDetailsPage()),
        );
      },
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 100,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: AssetImage("assets/images/barber_shop.jpg"),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(cardRadius)),
              ),
              Container(
                height: 100,
                width: MediaQuery.of(context).size.width,
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
                    borderRadius: BorderRadius.circular(cardRadius)),
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
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(cardRadius),
                bottomRight: Radius.circular(cardRadius),
              ),
              color: Theme.of(context).colorScheme.surface,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 5),
                        child: Row(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(right: 10),
                              child: UserPicture(
                                size: 40,
                                image: "assets/images/sample_picture.jpg",
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "The Gentleman's Cut",
                                  style: TextStyle(
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                      fontSize: 13),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "August 1, 2024, ",
                                      style: TextStyle(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .primary,
                                          fontSize: 12),
                                    ),
                                    Text(
                                      "09:00 am",
                                      style: TextStyle(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .primary,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
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
    );
  }
}
