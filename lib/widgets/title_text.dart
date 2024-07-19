import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class TitleText extends StatefulWidget {
  const TitleText({super.key});

  @override
  State<TitleText> createState() => _TitleTextState();
}

class _TitleTextState extends State<TitleText> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          const Text(
            "Favorites ",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xffffffff)),
          ),
          const Icon(
            Icons.favorite,
            color: Color(0xffff78ae),
            size: 25,
          )
              .animate(
                  delay: 1000.ms, onPlay: (controller) => controller.repeat())
              .shake(delay: 1000.ms),
        ],
      ),
    );
  }
}
