import 'package:booking_app/configs/imports.dart';

class UpdateCards extends StatefulWidget {
  final String userPicture;
  final String serviceName;
  final String cardMessage;
  final String date;
  final String time;
  const UpdateCards(
      {super.key,
      required this.userPicture,
      required this.serviceName,
      required this.cardMessage,
      required this.date,
      required this.time});

  @override
  State<UpdateCards> createState() => _UpdateCardsState();
}

class _UpdateCardsState extends State<UpdateCards> {
  double dateTimeSize = 10;
  double serviceAndMessagesize = 12;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: UserPicture(size: 50, image: widget.userPicture),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.serviceName,
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                          fontSize: serviceAndMessagesize,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      widget.cardMessage,
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                          fontSize: serviceAndMessagesize),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  widget.date,
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                      fontSize: dateTimeSize),
                ),
                Text(
                  widget.time,
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                      fontSize: dateTimeSize),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
