import 'package:booking_app/configs/imports.dart';

class BookingRequestPage extends StatefulWidget {
  const BookingRequestPage({super.key});

  @override
  State<BookingRequestPage> createState() => _BookingRequestPageState();
}

class _BookingRequestPageState extends State<BookingRequestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                child: Lottie.asset(
                  "assets/lottie/sending-completed.json",
                  repeat: false,
                  fit: BoxFit.contain,
                ),
              ),
              const BlackText(blackText: "Booking request sent!"),
              const CustomDivider(),
              const CustomDivider(),
              const Text(
                "Thank you for using BuzzUp to book your appointment at The Gentleman's Cut. \n\nPlease wait for the business to confirm your appointment.",
                style: TextStyle(fontSize: 13),
                textAlign: TextAlign.center,
              ),
              const CustomDivider(),
              const CustomDivider(),
              Align(
                alignment: Alignment.center,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).colorScheme.surface,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    "Return to Home",
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}