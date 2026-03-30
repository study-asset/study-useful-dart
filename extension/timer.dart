import 'dart:async';

extension TimerExtension on int {
  String toTimeString() {
    int h = this ~/ 3600;
    int m = (this % 3600) ~/ 60;
    int s = this % 60;

    return '${h.toString().padLeft(2, '0')}:${m.toString().padLeft(2, '0')}:${s.toString().padLeft(2, '0')}';
  }

  bool isMaximum(int limit) {
    return this >= limit;
  }
}

void main() {
  int count = 0;

  Timer.periodic(const Duration(seconds: 1), (_) {
    count += 1;
    print(count.toTimeString());
    
    if (count.isMaximum(10)) {
      print("최대 카운트에 도달하였습니다.");
    }
  }); 
}