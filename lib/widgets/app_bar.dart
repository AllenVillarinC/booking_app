import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xffffffff)),
                    borderRadius: BorderRadius.circular(25),
                    color: const Color(0xff000000),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(25),
                    child: Image.asset(
                      "assets/images/profile.jpeg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const Text(
                "Eddard Stark",
                style: TextStyle(fontSize: 25, color: Color(0xffffffff)),
              ),
            ],
          ),
          const Icon(
            Icons.search,
            color: Color(0xffffffff),
            size: 30,
          ),
        ],
      ),
    );
  }
}
