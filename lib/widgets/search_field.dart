import 'package:booking_app/configs/imports.dart';

class SearchField extends StatefulWidget {
  const SearchField({super.key});

  @override
  State<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          style: TextStyle(color: Theme.of(context).colorScheme.primary),
          cursorColor: Theme.of(context).colorScheme.primary,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(vertical: 10),
            prefixIcon: const Icon(Ionicons.search_outline),
            prefixIconColor: Theme.of(context).colorScheme.primary,
            suffixIcon: const Icon(Ionicons.mic_outline),
            suffixIconColor: Theme.of(context).colorScheme.primary,
            filled: true,
            fillColor: Theme.of(context).colorScheme.surface,
            hintText: "Search",
            hintStyle: TextStyle(
              color: Theme.of(context).colorScheme.primary.withOpacity(0.7),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Theme.of(context).colorScheme.primary.withOpacity(0.3),
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Theme.of(context).colorScheme.primary,
              ),
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
        const CustomDivider(),
      ],
    );
  }
}
