mixin Logger {
  void log(String value) {
    print("$value");
  }

  void error(String value) {
    print("에러: $value");
  }
}

mixin Validator {
  bool isValid(int a, int b) {
    return a >= 0 && b >= 0;
  }

  void validate(int a, int b) {
    if(!isValid(a, b)) {
      throw ArgumentError('음수가 포함되었습니다: $a, $b');
    }
  }
}

class Calculator with Logger, Validator {
  int a;
  int b;

  Calculator(this.a, this.b) {
    validate(a, b);
    log("기본 값 생성: $a, $b");
  }

  int add() {
    final result = a + b;
    log('더하기 결과 값: $result');
    return result;
  }

  int minus() {
    final result = a > b ? a - b : b - a;
    log('빼기 결과 값: $result');
    return result;
  }

  int multi() {
    final result = a * b;
    log("곱하기 결과 값: $result");
    return result;
  }

  double divide() {
    final result = a / b;
    log("나누기 결과 값: $result");
    return result;
  }
}

void main() {
  final calculator = Calculator(1, 2); // 기본 값 생성: 1, 2
  calculator.add(); // 더하기 결과 값: 3
  calculator.minus(); // 빼기 결과 값: 1
  calculator.multi(); // 곱하기 결과 값: 1
  calculator.divide(); // 나누기 결과 값: 1
  

  Calculator(1, -1); // Invalid argument(s): 음수가 포함되었습니다: 1, -1
}