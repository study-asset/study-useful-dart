extension ValidateExtension on String {
  bool get isValidEmail => RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(this);

  bool get isValidPassword => RegExp(r'^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,15}$').hasMatch(this);
}

void main() {
  String email = "test@gmail.com";
  print(email.isValidEmail); // true

  String password = "1234";
  print(password.isValidPassword); // false

  String fixedPassword = "123Xptmxm!";
  print(fixedPassword.isValidPassword); // true
}