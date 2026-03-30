extension StringExtension on String {
  String get capitalize => isNotEmpty ? '${this[0].toUpperCase()}${substring(1)}' : '';

  String toTitleCase() {
    return split(" ").map((word) => word.isNotEmpty ? '${word[0].toUpperCase()}${word.substring(1)}' : '').join(' ');
  }

  String repeat(int count) => List.filled(count, this).join(" ");
}

void main() {
  String name = 'john wick';
  print(name.capitalize); // John wick
  print(name.toTitleCase()); // John Wick
  print(name.repeat(10)); // john wick john wick john wick john wick .. +6
}