extension ListExtension<T> on List<T> {
  List<T> get distinct => toSet().toList();

  List<T> findItems(T item) {
    return where((element) => element == item).toList();
  }

  List<List<T>> chunk(int size) {
    return List.generate(
      (length / size).ceil(),
      (i) => sublist(i * size, (i + 1) * size > length ? length : (i + 1) * size)
    );
  }
}

void main() {
  List<String> fruits = ['사과', '바나나', '망고', '수박', '딸기', '포도', '사과'];
  List<String> filteredFruits = fruits.distinct; // 사과 제외
  print(filteredFruits.chunk(2)); // [[사과, 바나나], [망고, 수박], [딸기, 포도]]

  List<String> findFruits = fruits.findItems("사과");
  print(findFruits);
}