import 'package:dart_exam/23_12_18/homework_02.dart';
import 'package:test/test.dart';

// 연습문제 1
void main() {
  test('isEven() test', () {
    expect(isEven(4), true);
    expect(isEven(1), false);
    expect(isEven(10002), true);
    expect(isEven(111), false);
  });
}
