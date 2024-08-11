import 'package:booking_app/configs/imports.dart';

class CancelRequestPage extends StatefulWidget {
  const CancelRequestPage({super.key});

  @override
  State<CancelRequestPage> createState() => _CancelRequestPageState();
}

class _CancelRequestPageState extends State<CancelRequestPage> {
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
              const BlackText(blackText: "Cancellation request sent!")
                  .animate()
                  .fade(delay: const Duration(milliseconds: 2000)),
              const CustomDivider(),
              const CustomDivider(),
              const Text(
                "Please wait for your apppointment cancellation.",
                style: TextStyle(fontSize: 13),
                textAlign: TextAlign.center,
              ).animate().fadeIn(delay: const Duration(milliseconds: 2800)),
              const CustomDivider(),
              const CustomDivider(),
              Align(
                alignment: Alignment.center,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const MainPage()),
                    );
                  },
                  child: const Text(
                    "Return to Home",
                  ),
                ),
              ).animate().fadeIn(delay: const Duration(milliseconds: 3000)),
            ],
          ),
        ),
      ),
    );
  }
}
