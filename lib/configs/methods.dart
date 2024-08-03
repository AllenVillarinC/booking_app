String extractFirstName(String text) {
  List<String> words = text.split(' ');
  return words.isNotEmpty ? words[0] : '';
}