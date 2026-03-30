extension StringExtension on String {
  String get capitalize => isNotEmpty ? '${this[0].toUpperCase()}${substring(1)}' : '';
}

void main() {
  String name = 'john wick';
  print(name.capitalize); // John wick
}