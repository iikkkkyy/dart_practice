void main() {
  List<int> numbers = [];
  numbers.add(1);
  numbers.add(2);
  numbers.add(3);
  numbers.add(4);
  numbers.insert(0, 5);


  for (var value in numbers) {
    print(value);
  }

  // 인덱스가 필요하다
  for (int i = 0; i < numbers.length; i++) {
    print(numbers[i]);
  }

  numbers.forEach((element) => print(element));

  // 안티패턴
  final numbers2 = [];
  numbers2.add(1);
  numbers2.add('1');
  numbers2.add(null);
  numbers2.add(true);

  // 안티2
  final List numbers3 = [];

  // 올바른 방법
  final numbers4 = <int>[];

  dynamic a = 10;
  a = 'aaa';
  a = true;
  a = null;
}
