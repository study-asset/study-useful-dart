extension ValidateExtension on String {
  bool get isValidEmail => RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(this);

  bool get isValidPassword => RegExp(r'^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,15}$').hasMatch(this);
}

class AuthValidator {
  String? email(String value) {
    if (value.isEmpty) return "이메일을 입력해주세요.";
    else if (!value.isValidEmail) return "이메일 형식이 올바르지 않습니다.";
    else return null;
  }

  String? password(String value) {
    if (value.isEmpty) return "비밀번호를 입력해주세요.";
    else if (!value.isValidPassword) return "비밀번호를 올바르게 입력해 주세요.";
    else return null;
  }
}

void main() {
  String email = "test@gmail.com";
  print(AuthValidator().email(email));

  String password = "test123!";
  print(AuthValidator().password(password));
}