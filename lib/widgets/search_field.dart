import 'package:booking_app/configs/imports.dart';

class SearchField extends StatefulWidget {
  const SearchField({super.key});

  @override
  State<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      style:  TextStyle(color: primary),
      cursorColor: primary,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(vertical: 10),
        prefixIcon: const Icon(Ionicons.search_outline),
        prefixIconColor: primary,
        suffixIcon: const Icon(Ionicons.mic_outline),
        suffixIconColor: primary,
        filled: true,
        fillColor: const Color(0xff111111),
        hintText: "Search services",
        hintStyle: TextStyle(
          color: primary.withOpacity(0.7),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: primary.withOpacity(0.3),
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide:  BorderSide(
            color: primary,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
